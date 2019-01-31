//
//  FavoritesViewController.swift
//  NYTBestsellers
//
//  Created by Pritesh Nadiadhara on 1/25/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class FavoritesViewController: UIViewController {
    let favoritesView = FavoritesView()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Favorites"
        
        favoritesView.favoritesCollectionView.register(FavoritesCollectionViewCell.self, forCellWithReuseIdentifier: "FavoriteCell")
        self.view.addSubview(favoritesView)
        favoritesView.favoritesCollectionView.dataSource = self
        favoritesView.favoritesCollectionView.delegate = self
    }
    
}

extension FavoritesViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = favoritesView.favoritesCollectionView.dequeueReusableCell(withReuseIdentifier: "FavoriteCell", for: indexPath) as? FavoritesCollectionViewCell else {return UICollectionViewCell()}
        return cell
    }
    
    
}



