//
//  SettingsViewController.swift
//  NYTBestsellers
//
//  Created by Pritesh Nadiadhara on 1/25/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

//use scrolltoindex to set picker view to defualt

class SettingsViewController: UIViewController {
    private var arrayOfNYTCategories = [CategoryInfo](){
        didSet {
            DispatchQueue.main.async {
                self.settingsView.selectDefaultCatagory.reloadAllComponents()
            }
        }
    }
    
    let settingsView = SettingsView()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Settings"
        view.backgroundColor = .white
        self.view.addSubview(settingsView)
        getCategory()
    }
    
    func getCategory () {
        NYTBestSellerCategoryAPIClient.NYTCategory { (error, data) in
            if let error = error {
                print(error)
            } else if let data = data {
                self.arrayOfNYTCategories = data
            }
        }
    }
   

}



