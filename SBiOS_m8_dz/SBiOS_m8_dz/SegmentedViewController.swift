//
//  SegmentedViewController.swift
//  SBiOS_m8_dz
//
//  Created by Dmitry Aksyonov on 14.12.2019.
//  Copyright © 2019 watchingcarsgoby. All rights reserved.
//

import UIKit

class SegmentedViewController: UIViewController {
    var segmentedControl = UISegmentedControl()
    var segmentedeControlArray = ["Green", "Blue", "Violet"]

    override func viewDidLoad() {
        super.viewDidLoad()
        segmentedControl = UISegmentedControl(items: segmentedeControlArray)
        segmentedControl.frame = CGRect(x: 100, y: 100, width: 200, height: 30)
        view.addSubview(segmentedControl)
        segmentedControl.addTarget(self, action: #selector(segmentPicker), for: .valueChanged)
    }

    @objc func segmentPicker(target: UISegmentedControl) {
        switch target.selectedSegmentIndex {
        case 0:
            let greenView = UIView()
            greenView.frame = CGRect(x: 100, y: 200, width: 200, height: 300)
            greenView.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
            greenView.layer.cornerRadius = 5
            greenView.layer.borderWidth = 0.25
            let sampleTextField1 = UITextField(frame: CGRect(x: 20, y: 20, width: 300, height: 40))
            let sampleTextField2 = UITextField(frame: CGRect(x: 20, y: 80, width: 300, height: 40))
            sampleTextField1.placeholder = "Hello Hi Nihao"
            sampleTextField2.placeholder = "Hola Salut Ahoy"
            greenView.addSubview(sampleTextField1)
            greenView.addSubview(sampleTextField2)
            view.addSubview(greenView)
        case 1:
            let blueView = UIView()
            blueView.frame = CGRect(x: 100, y: 200, width: 200, height: 300)
            let sampleButton1 = UIButton(frame: CGRect(x: 20, y: 20, width: 100, height: 50))
            let sampleButton2 = UIButton(frame: CGRect(x: 20, y: 80, width: 100, height: 50))
            sampleButton1.setTitle("Button 1", for: UIControl.State.normal)
            sampleButton2.setTitle("Button 2", for: UIControl.State.normal)
            blueView.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
            blueView.layer.cornerRadius = 5
            blueView.layer.borderWidth = 0.25
            blueView.addSubview(sampleButton1)
            blueView.addSubview(sampleButton2)
            view.addSubview(blueView)
        case 2:
            let violetView = UIView()
            violetView.frame = CGRect(x: 100, y: 200, width: 200, height: 300)
            violetView.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
            violetView.layer.cornerRadius = 5
            violetView.layer.borderWidth = 0.25
            let scaling = UIView.ContentMode.scaleToFill
            let sampleImageView1 = UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 140))
            let sampleImageView2 = UIImageView(frame: CGRect(x: 0, y: 150, width: 200, height: 140))
            sampleImageView1.image = UIImage(named: "13597685_1224449080939233_1667780838_n")
            sampleImageView2.image = UIImage(named: "milky_way_galaxy_2-wallpaper-2560x1440")
            sampleImageView1.contentMode = scaling
            sampleImageView2.contentMode = scaling
            violetView.addSubview(sampleImageView1)
            violetView.addSubview(sampleImageView2)
            view.addSubview(violetView)
        default:
            break
        }
    }
}
