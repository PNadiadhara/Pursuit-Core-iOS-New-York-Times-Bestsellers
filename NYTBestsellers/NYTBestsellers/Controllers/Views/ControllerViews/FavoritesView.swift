//
//  FavoritesView.swift
//  NYTBestsellers
//
//  Created by Pritesh Nadiadhara on 1/25/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class FavoritesView: UIView {

    lazy var favoritesCollectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize =  CGSize(width: 300 , height: 400)
        layout.sectionInset = UIEdgeInsets(top: 20, left: 20 , bottom: 20, right: 20)
        layout.scrollDirection = .vertical
        
        let collectionView = UICollectionView.init(frame: UIScreen.main.bounds, collectionViewLayout: layout)
        collectionView.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)

        return collectionView
    }()

    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        setConstraints()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setConstraints(){
        addSubview(favoritesCollectionView)
        favoritesCollectionView.translatesAutoresizingMaskIntoConstraints = false

        [favoritesCollectionView.centerXAnchor.constraint(equalTo: centerXAnchor),
         favoritesCollectionView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
         favoritesCollectionView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
         favoritesCollectionView.widthAnchor.constraint(equalTo: widthAnchor)
         ].forEach{$0.isActive = true}
    }
}

