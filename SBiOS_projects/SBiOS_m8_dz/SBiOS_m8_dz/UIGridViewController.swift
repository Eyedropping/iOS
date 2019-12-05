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
        
        var x = 25, y = 100, width = 100, height = 100, xAxis = 0, yAxis = 0
        var bgColor = UIColor.systemPink
        var alpha: CGFloat = 0.8
        
        func createSubView(x: Int, y: Int, width: Int, height: Int) {
            let frame = CGRect(x: x, y: y, width: width, height: height)
            let subView = UIView(frame:frame)
            subView.backgroundColor = bgColor
            subView.alpha = alpha
        }
        
        while yAxis <= 2 {
            while xAxis <= 2 {
                createSubView(x: x, y: y, width: width, height: height)
            }
        }
        
        //        let frame = CGRect(x: 25, y: 100, width: 100, height: 100)
        //        let frame2 = CGRect(x: 175, y: 100, width: 100, height: 100)
        //        let frame3 = CGRect(x: 25, y: 300, width: 100, height: 100)
        //        let frame4 = CGRect(x: 175, y: 300, width: 100, height: 100)
        //
        //        let mainView = UIView(frame: frame)
        //        mainView.backgroundColor = .systemPink
        //        mainView.alpha = 0.8
        //        self.view.addSubview(mainView)
        //
        //        let mainView2 = UIView(frame: frame2)
        //        mainView2.backgroundColor = .systemPink
        //        mainView2.alpha = 0.8
        //        self.view.addSubview(mainView2)
        //
        //        let mainView3 = UIView(frame: frame3)
        //        mainView3.backgroundColor = .systemPink
        //        mainView3.alpha = 0.8
        //        self.view.addSubview(mainView3)
        //
        //        let mainView4 = UIView(frame: frame4)
        //        mainView4.backgroundColor = .systemPink
        //        mainView4.alpha = 0.8
        //        self.view.addSubview(mainView4)
        //
        
        
        
        //        while y <= 2 {
        //            while x <= 2 {
        //                <#code#>
        //            }
        //        }
    }
    
}
