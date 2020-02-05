//
//  UICollectionViewController.swift
//  SBiOS_m10
//
//  Created by Dmitry Aksyonov on 26.12.2019.
//  Copyright © 2019 Dmitry Aksyonov. All rights reserved.
//

import UIKit

class UICollectionViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    // MARK: - Properties

    @IBOutlet var collectionVIew: UICollectionView!

    let images: [UIImage] = [
        UIImage(named: "1.jpg")!,
        UIImage(named: "2.jpg")!,
        UIImage(named: "3.jpg")!,
        UIImage(named: "4.jpg")!,
        UIImage(named: "5.jpg")!,
        UIImage(named: "6.jpg")!,
    ]

    let redIcon: UIImage = UIImage(named: "red icon.jpg")!

    // MARK: - Methods

    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        return images.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ThisCollectionViewCell
        cell.cellImageView.image = images[indexPath.item]
        cell.cellLittleImageView.backgroundColor = .systemPink
        cell.cellLittleImageView.alpha = 0.7

        return cell
    }

    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt _: IndexPath) -> CGSize {
        let height = view.frame.size.height
        let width = view.frame.size.width

        return CGSize(width: width * 0.4, height: height * 0.4)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        collectionVIew.dataSource = self
        collectionVIew.delegate = self
    }
}
