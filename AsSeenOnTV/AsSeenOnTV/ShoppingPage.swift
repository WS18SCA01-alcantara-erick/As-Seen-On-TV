//
//  shoppingPage.swift
//  AsSeenOnTV
//
//  Created by Erick Alcantara on 1/9/19.
//  Copyright © 2019 Erick Alcantara. All rights reserved.
//

import UIKit

class shoppingPage: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    
    var item = ["Flex Tape", "Huggle Hoodie", "Flippin' Fantastic", "My Pillow", "Eyedrop Guide", "Vidalia Chop Wizard", ]
    
    var itemImage: [UIImage] = [UIImage(named: "Flex Tape")!, UIImage(named: "Huggle Hoodie")!,UIImage(named: "Flippin' Fantastic")!, UIImage(named: "My Pillow")!, UIImage(named: "Eyedrop Guide")!,UIImage(named: "Vidalia Chop Wizard")!,]
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource = self
        collectionView.delegate = self
        
        let itemSize = UIScreen.main.bounds.width/2 - 10
        
        let layout = UICollectionViewFlowLayout()
   
        layout.itemSize = CGSize(width: itemSize, height: itemSize)
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10
        
        collectionView.collectionViewLayout = layout
        
       
        
        // Do any additional setup after loading the view.
    }
    
    //number of views
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
    return item.count
        
    }
    //populate the view 
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        cell.itemLabel.text = item[indexPath.item]
        cell.itemImageView.image = itemImage[indexPath.item]
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.5
        
        return cell
        
    }
    
    //to select an image
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let dvc = mainStoryboard.instantiateViewController(withIdentifier: "DescriptionViewController") as! DescriptionViewController
        dvc.image = itemImage[indexPath.row]
        dvc.name = item[indexPath.row]
       
    
        
        self.navigationController?.pushViewController(dvc, animated: true)
        
        //borders when selected and return to normal when another image is selected
        
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.layer.borderColor = UIColor.gray.cgColor
        cell?.layer.borderWidth = 2
        
    }
    // turns selection on and off
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.layer.borderColor = UIColor.lightGray.cgColor
        cell?.layer.borderWidth = 0.5
    }
}
