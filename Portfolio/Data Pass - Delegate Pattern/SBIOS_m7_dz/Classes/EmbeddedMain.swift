//
//  EmbeddedMain.swift
//  SBIOS_m7_dz
//
//  Created by watchingcarsgoby on 15.11.2019.
//  Copyright © 2019 watchingcarsgoby. All rights reserved.
//

import UIKit

class EmbeddedMain: UIViewController, SecondaryDelegate {
    func sendData(data: UIColor) {
        view.backgroundColor = data
    }

    private var contentVC: EmbeddedSecondary?

    @IBAction func pickColor(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            contentVC?.view.backgroundColor = .green
        case 1:
            contentVC?.view.backgroundColor = .yellow
        case 2:
            contentVC?.view.backgroundColor = .purple
        default:
            break
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender _: Any?) {
        let vc: EmbeddedSecondary = segue.destination as! EmbeddedSecondary
        if segue.identifier == "Segue2emb" {
            vc.delegate = self
            contentVC = vc
        }
    }
}
