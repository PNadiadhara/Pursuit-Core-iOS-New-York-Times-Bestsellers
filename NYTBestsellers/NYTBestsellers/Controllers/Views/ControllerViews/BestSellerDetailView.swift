//
//  BestSellerDetailView.swift
//  NYTBestsellers
//
//  Created by Pritesh Nadiadhara on 1/25/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class BestSellerDetailView: UIView {

    lazy var bookImage : UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    lazy var bookLabel : UILabel = {
        let label = UILabel()
        return label
    }()
    
    lazy var bookDetail : UITextView = {
        let textView = UITextView()
        return textView
    }()
    
    lazy var amazonButton: UIButton = {
        let button = UIButton()
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        self.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints(){
        setbookImageConstraints()
        setBookLabelConstraints()
        setBookDetailConstrains()
        setAmazonButtonConstraints()
    }
    
    func setbookImageConstraints () {
        bookImage.translatesAutoresizingMaskIntoConstraints = false
        addSubview(bookImage)
        
        [bookImage.centerXAnchor.constraint(equalTo: centerXAnchor),
         bookImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 15),
         bookImage.heightAnchor.constraint(equalToConstant: 300),
         bookImage.widthAnchor.constraint(equalToConstant: 200)
         ].forEach{ $0.isActive = true}
    }
    
    func setBookLabelConstraints() {
        bookLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(bookLabel)
        
        [bookLabel.topAnchor.constraint(equalTo: bookLabel.bottomAnchor, constant: 11),
         bookLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11),
         bookLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11),
         bookLabel.heightAnchor.constraint(equalToConstant: 22)
         ].forEach{$0.isActive = true}
    }
    
    func setBookDetailConstrains() {
        bookDetail.translatesAutoresizingMaskIntoConstraints = false
        addSubview(bookDetail)
        
        [bookDetail.topAnchor.constraint(equalTo: bookLabel.bottomAnchor, constant: 11),
         bookDetail.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11),
         bookDetail.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11),
         bookDetail.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 11)
         ].forEach{$0.isActive = true}
    }
    
    func setAmazonButtonConstraints() {
        amazonButton.translatesAutoresizingMaskIntoConstraints = false
        addSubview(amazonButton)
        
        [amazonButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 22),
         amazonButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11),
         amazonButton.heightAnchor.constraint(equalToConstant: 45),
         amazonButton.widthAnchor.constraint(equalToConstant: 50)
         ].forEach{ $0.isActive = true}
        
    }
    
}

