//
//  ViewController.swift
//  SBiOS_m8_dz
//
//  Created by watchingcarsgoby on 28.11.2019.
//  Copyright © 2019 watchingcarsgoby. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
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
        "spiral_galaxy_4-wallpaper-2880x1800.jpg",
    ]

    var currentIndex = 0

    @IBOutlet var mainImageView: UIImageView!

    @IBAction func backwardButton(_: Any) {
        currentIndex = (currentIndex <= 0) ? 0 : currentIndex - 1
        mainImageView.image = UIImage(named: images[currentIndex])
    }

    @IBAction func forwardButton(_: Any) {
        currentIndex = (currentIndex >= images.count - 1) ? images.count - 1 : currentIndex + 1
        mainImageView.image = UIImage(named: images[currentIndex])
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        mainImageView.image = UIImage(named: images[currentIndex])
    }
}
