//
//  UITableViewController.swift
//  SBiOS_m10
//
//  Created by Dmitry Aksyonov on 01.01.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

import UIKit

// MARK: - Data preparation

struct Settings {
    var group = ""
    var items: [String] = []
    var icons: [UIImage] = []
}

class SettingsMakeUp {
    static func makeUp() -> [Settings] {
        return [
            Settings(group: " ",
                     items: ["Airplane Mode", "Wi-Fi", "Bluetooth", "Cellular", "Personal Hotspot"],
                     icons: [UIImage(named: "1_")!, UIImage(named: "2_")!, UIImage(named: "3_")!, UIImage(named: "4_")!, UIImage(named: "5_")!]),

            Settings(group: " ",
                     items: ["Notifications", "Sounds & Haptics", "Do not Disturb", "Screen Time"],
                     icons: [UIImage(named: "6_")!, UIImage(named: "7")!, UIImage(named: "8")!, UIImage(named: "9")!]),
            Settings(group: " ",
                     items: ["General", "Control Center", "Display & Brightness", "Accessibility", "Wallpaper", "Siri & Search", "FaceID & Passcode", "Emergency SOS", "Battery", "Privacy"],
                     icons: [UIImage(named: "10")!, UIImage(named: "11")!, UIImage(named: "12")!, UIImage(named: "13")!, UIImage(named: "14")!, UIImage(named: "15")!, UIImage(named: "16")!, UIImage(named: "17")!, UIImage(named: "18")!, UIImage(named: "19")!]),
            Settings(group: " ",
                     items: ["iTunes & AppStore", "Wallet & ApplePay"],
                     icons: [UIImage(named: "20")!, UIImage(named: "21")!]),
            Settings(group: " ",
                     items: ["Passwords & Accounts", "Mail", "Contacts", "Calendar", "Notes", "Reminders", "Voice Memos", "Phone", "Messages", "FaceTime", "Maps", "Safari", "Stocks", "Health", "Home"],
                     icons: [UIImage(named: "22")!, UIImage(named: "23")!, UIImage(named: "24")!, UIImage(named: "25")!, UIImage(named: "26")!, UIImage(named: "27")!, UIImage(named: "28")!, UIImage(named: "29")!, UIImage(named: "30")!, UIImage(named: "31")!, UIImage(named: "32")!, UIImage(named: "33")!, UIImage(named: "34")!, UIImage(named: "35")!, UIImage(named: "36")!]),
            Settings(group: " ",
                     items: ["Music", "Photos", "Camera", "Books", "Podcasts", "Game Center"],
                     icons: [UIImage(named: "37")!, UIImage(named: "38")!, UIImage(named: "39")!, UIImage(named: "40")!, UIImage(named: "41")!, UIImage(named: "42")!]),
            Settings(group: " ",
                     items: ["Developer"],
                     icons: [UIImage(named: "43")!]),
        ]
    }
}

// MARK: - Setting up TableViewController

class TableVC: UITableViewController {
    // MARK: - Properties

    @IBOutlet var tableVC: UITableView!
    let settings2 = SettingsMakeUp.makeUp()

    // MARK: - Methods

    // makes headers not floating
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let sectionHeaderHeight: CGFloat = 36.33
        if scrollView.contentOffset.y <= sectionHeaderHeight, scrollView.contentOffset.y >= 0 {
            scrollView.contentInset = UIEdgeInsets(top: -scrollView.contentOffset.y, left: 0, bottom: 0, right: 0)
        } else if scrollView.contentOffset.y >= sectionHeaderHeight {
            scrollView.contentInset = UIEdgeInsets(top: -scrollView.contentOffset.y, left: 0, bottom: 0, right: 0)
        }
    }

    // sets the section's headins
    override func tableView(_: UITableView, titleForHeaderInSection section: Int) -> String? {
        return settings2[section].group
    }

    // sets the number of sections
    override func numberOfSections(in _: UITableView) -> Int {
        return settings2.count
    }

    // sets the number of rows per section
    override func tableView(_: UITableView, numberOfRowsInSection group: Int) -> Int {
        return settings2[group].items.count
    }

    // sets the cell and its content
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableVCCell
        cell.cellLabel.text = settings2[indexPath.section].items[indexPath.row]
        cell.cellIcon.image = settings2[indexPath.section].icons[indexPath.row]
        cell.cellIcon.layer.cornerRadius = 5
        cell.accessoryType = .disclosureIndicator

        return cell
    }

    // MARK: - Initial Setup

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        tableVC.dataSource = self
        tableVC.delegate = self
    }
}
