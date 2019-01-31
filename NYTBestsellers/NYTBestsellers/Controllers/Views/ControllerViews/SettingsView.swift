//
//  SettingsView.swift
//  NYTBestsellers
//
//  Created by Pritesh Nadiadhara on 1/25/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class SettingsView: UIView {

    lazy var selectDefaultCatagory : UIPickerView = {
        let pickerView = UIPickerView()
        pickerView.backgroundColor = .white
        return pickerView
    }()

    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(selectDefaultCatagory)
        setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints(){
        selectDefaultCatagory.translatesAutoresizingMaskIntoConstraints = false
        
        [selectDefaultCatagory.centerXAnchor.constraint(equalTo: centerXAnchor),
         selectDefaultCatagory.centerYAnchor.constraint(equalTo: centerYAnchor)
         
         ].forEach{$0.isActive = true}
    }
}
