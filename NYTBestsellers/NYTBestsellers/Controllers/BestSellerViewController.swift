//
//  BestSellerViewController.swift
//  NYTBestsellers
//
//  Created by Pritesh Nadiadhara on 1/25/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class BestSellerViewController: UIViewController {
    
    let bestSellerView = BestSellerzView()
    private var arrayOfNYTCategories = [CategoryInfo](){
        didSet {
            DispatchQueue.main.async {
                self.bestSellerView.bestSellerCatagoriesPickerView.reloadAllComponents()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "BestSellers"
        dump(arrayOfNYTCategories)
        bestSellerView.bestSellerCollectionView.register(BestSellerCollectionViewCell.self, forCellWithReuseIdentifier: "BestSellerCell")
        self.view.addSubview(bestSellerView)
        bestSellerView.bestSellerCollectionView.dataSource = self
        bestSellerView.bestSellerCollectionView.delegate = self
        bestSellerView.bestSellerCatagoriesPickerView.dataSource = self
        bestSellerView.bestSellerCatagoriesPickerView.delegate = self
        
 
    }
    
    func getBookCategories () {
        NYTBestSellerCategoryAPIClient.NYTCategory { (error, data) in
            if let error = error {
                print(error)
            } else if let data = data {
                self.arrayOfNYTCategories = data
            }
        }
    }
    

    
    
    
}

extension BestSellerViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = bestSellerView.bestSellerCollectionView.dequeueReusableCell(withReuseIdentifier: "BestSellerCell", for: indexPath) as? BestSellerCollectionViewCell else { return UICollectionViewCell()}
        return cell
        
    }
    
    
}

extension BestSellerViewController : UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayOfNYTCategories.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return "wat"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }
    
    
}
