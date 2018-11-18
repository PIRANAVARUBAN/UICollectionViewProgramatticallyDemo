//
//  CustomCollectionViewCell.swift
//  UICollectionViewDemo
//
//  Created by 4Axis_Admin on 11/18/18.
//  Copyright © 2018 com.npruban.tutorials. All rights reserved.
//

import Foundation
import UIKit


class CustomCollectionViewCell: UICollectionViewCell {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
    
    
    func configureCell()  {
        
        self.contentView.addSubview(cellTopView)
        self.contentView.addSubview(cellBottomRightButton)
        self.contentView.addSubview(cellBottomLeftButton)
        
        let viewDictionary:[String:Any] = [
            "cellTopView":cellTopView,
            "cellBottomRightButton":cellBottomRightButton,
            "cellBottomLeftButton":cellBottomLeftButton
        ]
        
        self.contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-2-[cellTopView]-2-|" , options: .init(rawValue: 0), metrics: nil, views: viewDictionary))
        
        self.contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-2-[cellBottomLeftButton]-2-[cellBottomRightButton(cellBottomLeftButton)]-2-|" , options: .init(rawValue: 0), metrics: nil, views: viewDictionary))
        
        self.contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-2-[cellTopView]-2-[cellBottomLeftButton(cellTopView)]-2-|" , options: .init(rawValue: 0), metrics: nil, views: viewDictionary))
        
        self.contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-2-[cellTopView]-2-[cellBottomRightButton(cellTopView)]-2-|" , options: .init(rawValue: 0), metrics: nil, views: viewDictionary))
        
        
        
    }
    
    
    
    lazy var cellTopView: UIView = {
        
        let view = UIView()
        view.backgroundColor = UIColor.cyan
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
        
    }()
    
    lazy var cellBottomRightButton: UIButton = {
        
        let button = UIButton()
        button.backgroundColor = UIColor.gray
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
        
        
    }()
    
    
    lazy var cellBottomLeftButton: UIButton = {
        
        let button = UIButton()
        button.backgroundColor = UIColor.blue
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
        
        
    }()
    
    
    
    
    
}
