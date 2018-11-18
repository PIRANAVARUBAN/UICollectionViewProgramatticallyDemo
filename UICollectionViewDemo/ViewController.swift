//
//  ViewController.swift
//  UICollectionViewDemo
//
//  Created by Piranavaruban on 11/18/18.
//  Copyright © 2018 com.npruban.tutorials. All rights reserved.
//

import UIKit

class ViewController: UIViewController  {
    
    let kCellIdentifier_CollectionViewCell = "kCellIdentifier_CollectionViewCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    
    func configureUI(){
        
   
        
        self.view.addSubview(testCollectionView)
        
        self.view.addConstraint(NSLayoutConstraint(item: testCollectionView, attribute: .width , relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 0.9, constant: 0.0))
        
        self.view.addConstraint(NSLayoutConstraint(item: testCollectionView, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.7, constant: 0.0))
        
        
        self.view.addConstraint(NSLayoutConstraint(item: testCollectionView, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1.0, constant: 0.0))
        
        self.view.addConstraint(NSLayoutConstraint(item: testCollectionView, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0))
        
        
        
    }

    
    
    lazy var testCollectionView: UICollectionView = {
        
        let collectionViewLayout = UICollectionViewFlowLayout();
        let testCollectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: collectionViewLayout)
        testCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: kCellIdentifier_CollectionViewCell)
        testCollectionView.translatesAutoresizingMaskIntoConstraints = false
        testCollectionView.backgroundColor = UIColor.purple
        testCollectionView.dataSource = self
        testCollectionView.delegate = self
        return testCollectionView
        
    }()
  

    
}



// MARK: - UICollectionViewDataSource delegate methods

extension ViewController:  UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
       
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: kCellIdentifier_CollectionViewCell, for: indexPath)
        cell.contentView.backgroundColor =  UIColor.magenta
        return cell
    }
    
    
}



// MARK: - UICollectionViewDelegate delegate methods
extension ViewController : UICollectionViewDelegate{
    
    
}


// MARK: - UICollectionViewDelegateFlowLayout delegate methods
extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.bounds.size.width - 16, height: 120)
    }
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.init(top: 8, left: 8, bottom: 8, right: 8)
    }
}


