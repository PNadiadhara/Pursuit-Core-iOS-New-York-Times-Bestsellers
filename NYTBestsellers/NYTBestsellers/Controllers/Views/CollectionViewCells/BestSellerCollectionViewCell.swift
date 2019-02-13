//
//  BestSellerCollectionViewCell.swift
//  NYTBestsellers
//
//  Created by Pritesh Nadiadhara on 1/25/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class BestSellerCollectionViewCell: UICollectionViewCell {
    
    lazy var bookCoverImage : UIImageView = {
        let image = UIImageView(image: UIImage(named: "book-cover-placeholder"))
        return image
    }()
    
    lazy var weeksOnBestSeller: UILabel = {
        let label = UILabel()
        label.text = "PlaceHolder"
        label.textAlignment = .center
        return label
    }()
    
    lazy var bookDescription: UITextView = {
        let textView = UITextView()
        textView.text = "More Place Holder"
        textView.isEditable = false
        textView.textAlignment = .center
        return textView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        addSubview(bookDescription)
        addSubview(bookCoverImage)
        addSubview(weeksOnBestSeller)
        setConstraints()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        bookCoverImage.translatesAutoresizingMaskIntoConstraints = false
        weeksOnBestSeller.translatesAutoresizingMaskIntoConstraints = false
        bookDescription.translatesAutoresizingMaskIntoConstraints = false
        
        [bookCoverImage.topAnchor.constraint(equalTo: topAnchor, constant: 11),
         bookCoverImage.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
         bookCoverImage.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.5 ),
         bookCoverImage.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.5),
         bookDescription.bottomAnchor.constraint(equalToSystemSpacingBelow: safeAreaLayoutGuide.bottomAnchor, multiplier: -0.5 )
         ].forEach{$0.isActive = true}
        
        
        [weeksOnBestSeller.topAnchor.constraint(equalTo: bookCoverImage.bottomAnchor, constant: 11),
         weeksOnBestSeller.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11),
         weeksOnBestSeller.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11)
         ].forEach{$0.isActive = true}
        
        [bookDescription.topAnchor.constraint(equalTo: weeksOnBestSeller.bottomAnchor, constant: 11),
         bookDescription.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11),
         bookDescription.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11),
         bookDescription.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 11)
            
         ].forEach{$0.isActive = true}
        
    }
    
}
