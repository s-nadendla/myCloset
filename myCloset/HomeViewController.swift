//
//  HomeViewController.swift
//  myCloset
//
//  Created by Sai Nadendla on 2/17/19.
//  Copyright © 2019 Sai Nadendla. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    let pictures = ["1", "2", "3", "4", "5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34"]
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    override var prefersHomeIndicatorAutoHidden: Bool {
        return true
    }
}
extension HomeViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pictures.count;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as! CollectionViewCell
        let image = UIImage(named: pictures[indexPath.row]) as UIImage?
        
        cell.contentView.layer.cornerRadius = 20
        cell.contentView.layer.borderWidth = 1.0
        cell.contentView.layer.borderColor = UIColor.clear.cgColor
        cell.contentView.layer.masksToBounds = true
  
        cell.layer.shadowColor = UIColor.lightGray.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        cell.layer.shadowRadius = 2.0
        cell.layer.shadowOpacity = 1.0
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
        
        //cell.productButton.addTarget(self, action: "segue", for: .touchUpInside)
        cell.productButton.setBackgroundImage(image, for: .normal)


        return cell
    }
    //func segue(sender: UIButton) {
        // Perform segue and other stuff
        //sender.title // This is the area code
        //self.performSegue(withIdentifier: "moveToView", sender: self)
//    }

    
    
}
