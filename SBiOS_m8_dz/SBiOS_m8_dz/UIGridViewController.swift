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
        
        func create2Views(xCoord: Int, yCoord: Int, frameWidth: Int, frameHeight: Int) {
            let frame1 = CGRect(x: xCoord, y: yCoord, width: Int(frameWidth), height: Int(frameHeight))
            let view1 = UIImageView(frame: frame1)
            view1.backgroundColor = bgColor
            view1.alpha = alpha
            view1.contentMode = .scaleAspectFit
            view1.translatesAutoresizingMaskIntoConstraints = false
//            let margins = self.view.layoutMarginsGuide
//            view1.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
            
            
            
//            print(margins)
//
            
            
//            let view1HorizontalConstraint = NSLayoutConstraint(item: view1, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view1, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 20)
//            let view1VerticalConstraint = NSLayoutConstraint(item: view1, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view1, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: 100)
//            let view1WidthConstraint = NSLayoutConstraint(item: view1, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: self.view.frame.width / 2 - 30)
//            let view1HeightConstraint = NSLayoutConstraint(item: view1, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: (self.view.frame.width / 2 - 30) * 1.3)
            self.view.addSubview(view1)
//            self.view.addConstraints([view1HorizontalConstraint, view1VerticalConstraint, view1WidthConstraint, view1HeightConstraint])
            
            let frame2 = CGRect(x: xCoord + 195, y: yCoord, width: Int(frameWidth), height: Int(frameHeight))
            let view2 = UIImageView(frame: frame2)
            view2.backgroundColor = bgColor
            view2.alpha = alpha
            view2.contentMode = .scaleAspectFit
            
//            let view2HorizontalConstraint = NSLayoutConstraint
//            let view2VerticalConstraint = NSLayoutConstraint
//            let view2WidthConstraint = NSLayoutConstraint
//            let view2HeightConstraint = NSLayoutConstraint
            self.view.addSubview(view2)
        }
        
        while yAxis < 2 {
            create2Views(xCoord: x, yCoord: y, frameWidth: Int(width), frameHeight: Int(height))
            y += 350
            yAxis += 1
        }
    }
}
