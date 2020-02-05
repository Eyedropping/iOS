//
//  ExpandingText.swift
//  SBiOS_m9
//
//  Created by Dmitry Aksyonov on 18.12.2019.
//  Copyright © 2019 watchingcarsgoby. All rights reserved.
//

import UIKit

class ExpandingText: UIViewController {
    var tapCount: Int = 0

    @IBOutlet var expandingLabel: UILabel!

    @IBOutlet var expandingLabelHeigthConstraint: NSLayoutConstraint!

    @IBAction func expand(_: UIButton) {
        tapCount += 1

        if tapCount == 1000 { tapCount = 0 }

        switch tapCount % 2 {
        case 0:
            expandingLabelHeigthConstraint.constant = 21 * 5
        case 1:

            expandingLabelHeigthConstraint.constant = 21
        default:
            break
        }

        print(tapCount)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
