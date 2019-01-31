//
//  BestSellerzView.swift
//  NYTBestsellers
//
//  Created by Pritesh Nadiadhara on 1/25/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class BestSellerzView: UIView {
    
    lazy var bestSellerCollectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize.init(width: 200, height: 300)
        layout.sectionInset = UIEdgeInsets.init(top: 20, left: 20, bottom: 20, right: 20)
        layout.scrollDirection = .horizontal

        
        let collectionView = UICollectionView.init(frame: UIScreen.main.bounds, collectionViewLayout: layout)
        // Data Source and Delagets are in the Viewcontroller
        collectionView.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        
        return collectionView
    }()
    
    lazy var bestSellerCatagoriesPickerView : UIPickerView = {
        let pickerView = UIPickerView()
        pickerView.backgroundColor = .white
        let pickerViewArray = [CategoryInfo]()
        return pickerView
    }()
    
    

    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(bestSellerCollectionView)
        addSubview(bestSellerCatagoriesPickerView)
        setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        bestSellerCollectionView.translatesAutoresizingMaskIntoConstraints = false
        bestSellerCatagoriesPickerView.translatesAutoresizingMaskIntoConstraints = false
        
        // bestSellerCollectionView constraints
        [bestSellerCollectionView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
         bestSellerCollectionView.widthAnchor.constraint(equalTo:safeAreaLayoutGuide.widthAnchor),
            bestSellerCollectionView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.5)
         ].forEach{ $0.isActive = true }
        
        //bestSellerCatagoriesPickerView contstrains
        [bestSellerCatagoriesPickerView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor),
         bestSellerCatagoriesPickerView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
        bestSellerCatagoriesPickerView.topAnchor.constraint(equalTo: bestSellerCollectionView.bottomAnchor)
        ].forEach{ $0.isActive = true}
    }
    
}
