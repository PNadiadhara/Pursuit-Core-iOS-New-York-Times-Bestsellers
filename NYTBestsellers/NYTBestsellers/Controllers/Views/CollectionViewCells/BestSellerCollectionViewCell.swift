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
        let image = UIImageView(image: UIImage(named: "tardigrade"))
        return image
    }()
    
    lazy var weeksOnBestSeller: UILabel = {
        let label = UILabel()
        label.text = "PlaceHolder"
        return label
    }()
    
    lazy var bookDescription: UITextView = {
        let textView = UITextView()
        textView.text = "More Place Holder"
        textView.isEditable = false
        return textView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
//        addSubview(bookDescription)
        addSubview(bookCoverImage)
        
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
         bookCoverImage.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.25),
         bookCoverImage.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.25),
         bookDescription.bottomAnchor.constraint(equalToSystemSpacingBelow: safeAreaLayoutGuide.bottomAnchor, multiplier: -0.5 )
         ].forEach{$0.isActive = true}
        
    }
    
}
