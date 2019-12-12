//
//  UIGridViewController.swift
//  SBiOS_m8_dz
//
//  Created by watchingcarsgoby on 02.12.2019.
//  Copyright © 2019 watchingcarsgoby. All rights reserved.
//

import UIKit

class UIGridViewController: UIViewController {
    
    @IBOutlet weak var UIGrid: UIImageView!
    
    let images: [String] = [
        "13597685_1224449080939233_1667780838_n.jpg",
        "milky_way_galaxy_2-wallpaper-2560x1440.jpg",
        "18013966_1880709232217036_4408452903329595392_n.jpg",
        "big_bang-wallpaper-1920x1080.jpg",
        "19984512_112240686076423_2296686731644108800_n.jpg",
        "galaxy_4-wallpaper-1920x1080.jpg",
        "24125526_322142304859750_2525012334175322112_n.jpg",
        "35506987_268988417178706_474661742396309504_n.jpg",
        "galaxy_explosion-wallpaper-1920x1080.jpg",
        "spiral_galaxy_4-wallpaper-2880x1800.jpg"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var x = 20, y = 100, width = self.view.frame.width / 2 - 30, height = width * 1.3, yAxis = 0, labelNo = 0
        let bgColor = UIColor.systemPink
        let alpha: CGFloat = 0.8
        let margins = self.view.layoutMarginsGuide
        
        func create2Views(xCoord: Int, yCoord: Int, frameWidth: Int, frameHeight: Int) {
            let viewFrame1 = CGRect(x: xCoord, y: yCoord, width: Int(frameWidth), height: Int(frameHeight))
            let view1 = UIImageView(frame: viewFrame1)
            view1.backgroundColor = bgColor
            view1.alpha = alpha
            self.view.addSubview(view1)
            
            let viewFrame2 = CGRect(x: xCoord + 195, y: yCoord, width: Int(frameWidth), height: Int(frameHeight))
            let view2 = UIImageView(frame: viewFrame2)
            view2.backgroundColor = bgColor
            view2.alpha = alpha
            self.view.addSubview(view2)
        }
        
        //        func createLabel() {
        //            let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
        //            label.center = CGPoint(x: 160, y: 285)
        //            label.textAlignment = NSTextAlignment.center
        //            label.text = "Label #\(labelNo)"
        //            self.view.addSubview(label)
        //        }
        
        while yAxis < 2 {
            create2Views(xCoord: x, yCoord: y, frameWidth: Int(width), frameHeight: Int(height))
            y += 350
            yAxis += 1
        }
        
        //        createLabel()
        print(margins.layoutFrame)
    }
}
