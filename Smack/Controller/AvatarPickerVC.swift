//
//  AvatarPickerVC.swift
//  Smack
//
//  Created by A664291 on 8/9/17.
//  Copyright © 2017 KingdomBits. All rights reserved.
//

import UIKit

class AvatarPickerVC: UIViewController, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    // Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var segmentCtrl: UISegmentedControl!
    
    // Vars
    var avatarType = AvatarType.dark
    

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    @IBAction func backPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func segmentCtrlChanged(_ sender: Any) {
        if segmentCtrl.selectedSegmentIndex == 0 {
            avatarType = AvatarType.dark
        } else {
            avatarType = AvatarType.light
        }
        
        collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "avatarCell", for: indexPath) as? AvatarCell {
            cell.configureCell(index: indexPath.item, type: avatarType)
            return cell
        } else {
            return AvatarCell()
        }
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 28
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        var numberOfColumns: CGFloat = 3
        if UIScreen.main.bounds.width > 320 {
            numberOfColumns = 4
        }
        
        let spaceBetweenCells: CGFloat = 10
        let padding: CGFloat = 40
        let cellDimension: CGFloat = ((collectionView.bounds.width - padding) - (numberOfColumns - 1) * spaceBetweenCells) / numberOfColumns
        return CGSize(width: cellDimension, height: cellDimension)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if avatarType == AvatarType.dark {
            UserDataService.instance.setAvatarName(avatarName: "dark\(indexPath.item)")
        } else {
            UserDataService.instance.setAvatarName(avatarName: "light\(indexPath.item)")
        }
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
    
    
    
    
}
