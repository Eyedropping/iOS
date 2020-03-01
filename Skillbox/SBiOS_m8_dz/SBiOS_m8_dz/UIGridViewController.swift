//
//  UIGridViewController.swift
//  SBiOS_m8_dz
//
//  Created by watchingcarsgoby on 02.12.2019.
//  Copyright © 2019 watchingcarsgoby. All rights reserved.
//

import UIKit

class UIGridViewController: UIViewController {
    @IBOutlet var UIGrid: UIImageView!

    public let images: [String] = [
        "13597685_1224449080939233_1667780838_n.jpg",
        "milky_way_galaxy_2-wallpaper-2560x1440.jpg",
        "18013966_1880709232217036_4408452903329595392_n.jpg",
        "big_bang-wallpaper-1920x1080.jpg",
        "19984512_112240686076423_2296686731644108800_n.jpg",
        "galaxy_4-wallpaper-1920x1080.jpg",
        "24125526_322142304859750_2525012334175322112_n.jpg",
        "35506987_268988417178706_474661742396309504_n.jpg",
        "galaxy_explosion-wallpaper-1920x1080.jpg",
        "spiral_galaxy_4-wallpaper-2880x1800.jpg",
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // basic vars for both views and labels
        var x = 20, y = 100, width = view.frame.width / 2 - 30, height = width * 1.3, yAxis = 0

        // views preliminary setup
        let bgColor = UIColor.systemPink
        let alpha: CGFloat = 0.8
        let scaling = UIView.ContentMode.scaleToFill

        // vars for labels - дописать
        var xC: Int = 20, yC: Int = 100 + Int(height), labelWidth = 200, labelHeight = 100, labelNo = 0

        // misc
        var currentIndex = 0

        func create2Views(xCoord: Int, yCoord: Int, frameWidth: Int, frameHeight: Int) {
            let viewFrame1 = CGRect(x: xCoord, y: yCoord, width: Int(frameWidth), height: Int(frameHeight))
            let view1 = UIImageView(frame: viewFrame1)
            view1.backgroundColor = bgColor
            view1.alpha = alpha
            view1.image = UIImage(named: images[currentIndex])
            view1.contentMode = scaling
            view1.layer.cornerRadius = 5
            view1.layer.borderWidth = 0.25
            view1.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            view.addSubview(view1)

            let viewFrame2 = CGRect(x: xCoord + 195, y: yCoord, width: Int(frameWidth), height: Int(frameHeight))
            let view2 = UIImageView(frame: viewFrame2)
            view2.backgroundColor = bgColor
            view2.alpha = alpha
            view2.image = UIImage(named: images[currentIndex + 1])
            view2.contentMode = scaling
            view2.layer.cornerRadius = 5
            view2.layer.borderWidth = 0.25
            view2.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            view.addSubview(view2)
        }

        func createLabel(lxCoord: Int, lyCoord: Int, labelWidth: Int, labelHeight: Int) {
            let labelFrame1 = CGRect(x: lxCoord, y: lyCoord, width: labelWidth, height: labelHeight)
            let label1 = UILabel(frame: labelFrame1)
            label1.textAlignment = NSTextAlignment.center
            label1.text = "Label #\(labelNo + 1)"
            view.addSubview(label1)

            let labelFrame2 = CGRect(x: lxCoord + 195, y: lyCoord, width: labelWidth, height: labelHeight)
            let label2 = UILabel(frame: labelFrame2)
            label2.textAlignment = NSTextAlignment.center
            label2.text = "Label #\(labelNo + 2)"
            view.addSubview(label2)
        }

        while yAxis < 2 {
            create2Views(xCoord: x, yCoord: y, frameWidth: Int(width), frameHeight: Int(height))
            createLabel(lxCoord: xC, lyCoord: yC, labelWidth: labelWidth, labelHeight: labelHeight)
            y += 350
            yC += 350
            yAxis += 1
            labelNo += 2
            currentIndex += 2
        }
    }
}
