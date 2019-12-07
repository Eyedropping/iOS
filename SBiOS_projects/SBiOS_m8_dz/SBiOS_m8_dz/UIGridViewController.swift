//
//  UIGridViewController.swift
//  SBiOS_m8_dz
//
//  Created by watchingcarsgoby on 02.12.2019.
//  Copyright © 2019 watchingcarsgoby. All rights reserved.
//

import UIKit

class UIGridViewController: UIViewController {
    
    var x = 2
    var y = 2
    
    @IBOutlet weak var UIGrid: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var x = 25, y = 100, width = 100, height = 100, xAxis = 0, yAxis = 0, labelNo = 1
        var bgColor = UIColor.systemPink
        var alpha: CGFloat = 0.8
        
        func createLabel(x: Int, y: Int, width: Int, height: Int) {
            let frame = CGRect(x: x + 100, y: y + 100, width: width, height: height)
            let label = UILabel(frame: frame)
            label.center = CGPoint(x: x + width / 2, y: x + height / 2)
            label.textAlignment = NSTextAlignment.center
            label.text = "Label #\(labelNo)"
            self.view.addSubview(label)
        }
        
        func createSubView(x: Int, y: Int, width: Int, height: Int) {
            let frame1 = CGRect(x: x, y: y, width: width, height: height)
            let frame2 = CGRect(x: x + 100, y: y, width: width, height: height)
            var imageViewArray = [UIView]()
            
            let subView1 = UIView(frame:frame1)
            subView1.backgroundColor = bgColor
            subView1.alpha = alpha
            
            let subView2 = UIView(frame:frame2)
            subView2.backgroundColor = bgColor
            subView2.alpha = alpha
            
            imageViewArray.append(subView1)
            imageViewArray.append(subView2)
            
            self.view.addSubview(imageViewArray)
        }
        
        while yAxis <= 1 {
            y += 130
            x = 0
            xAxis = 0
            yAxis += 1
            while xAxis <= 1 {
                createSubView(x: x, y: y, width: width, height: height)
                createLabel(x: x, y: y, width: width, height: height)
                xAxis += 1
                x += 130
            }
        }
    }
}
