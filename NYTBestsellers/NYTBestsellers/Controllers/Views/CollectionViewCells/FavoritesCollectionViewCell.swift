//
//  FavoritesCollectionViewCell.swift
//  NYTBestsellers
//
//  Created by Pritesh Nadiadhara on 1/25/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class FavoritesCollectionViewCell: UICollectionViewCell {
    
    lazy var favoriteBookCoverImage : UIImageView = {
        let image = UIImageView(image: UIImage(named: "book-cover-placeholder"))
        return image
    }()
    
    lazy var bookLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        return label
    }()
    
    lazy var bookTextView: UITextView = {
        let textView = UITextView()
        return textView
    }()
    
    lazy var actionButton: UIButton = {
        let button = UIButton()
        button.setTitle(". . .", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        addSubview(favoriteBookCoverImage)
        setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        setFavoriteBookCoverImageConstraints()
        setBookLabelConstraints()
        setBookTextViewConstraints()
        setActionButtonConstraints()
    }
    
    func setFavoriteBookCoverImageConstraints (){
        addSubview(favoriteBookCoverImage)
        favoriteBookCoverImage.translatesAutoresizingMaskIntoConstraints = false
        
        [favoriteBookCoverImage.centerXAnchor.constraint(equalTo: centerXAnchor),
         favoriteBookCoverImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 11),
         favoriteBookCoverImage.heightAnchor.constraint(equalToConstant: 150),
         favoriteBookCoverImage.widthAnchor.constraint(equalToConstant: 100)
         ].forEach{$0.isActive = true}
    }
    
    func setBookLabelConstraints() {
        addSubview(bookLabel)
        bookLabel.translatesAutoresizingMaskIntoConstraints = false
        
        [bookLabel.topAnchor.constraint(equalTo: favoriteBookCoverImage.bottomAnchor, constant: 11),
         bookLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11),
         bookLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11),
         bookLabel.heightAnchor.constraint(equalToConstant: 20)
         
         ].forEach{$0.isActive = true}
        
    }
    
    func setBookTextViewConstraints() {
        addSubview(bookTextView)
        bookTextView.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        bookTextView.translatesAutoresizingMaskIntoConstraints = false
        
        [bookTextView.topAnchor.constraint(equalTo: bookLabel.bottomAnchor, constant: 11),
         bookTextView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11),
         bookTextView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11),
         bookTextView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -11)
         
         ].forEach{$0.isActive = true}
    }
    
    func setActionButtonConstraints(){
        addSubview(actionButton)
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        
        [actionButton.topAnchor.constraint(equalTo: topAnchor, constant: 10),
         actionButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11),
         actionButton.heightAnchor.constraint(equalToConstant: 20),
         actionButton.widthAnchor.constraint(equalToConstant: 30)
         
         ].forEach{$0.isActive = true}
    }
  
    
}
