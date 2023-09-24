//
//  NewsCollectionViewCell.swift
//  DailyNews
//
//  Created by noor on 13/09/23.
//

import UIKit
import SDWebImage

class NewsCollectionViewCell: UICollectionViewCell {
    lazy var label: UILabel = {
        let label  = UILabel()
        label.font = UIFont(manropeFont: .semiBold, fontSize: 15)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Test"
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        return label
    }()
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(assetColor: .grey2)
        view.layer.cornerRadius = 10
        return view
    }()
    
    lazy var image: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(systemName: "photo")
        imageView.tintColor = .black
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureCell(_ item: Article){
        label.text = item.title
        image.sd_setImage(with: URL(string: item.urlToImage ?? ""))
    }
}

private extension NewsCollectionViewCell {
    func setup (){
        self.contentView.addSubview(containerView)
        containerView.addSubview(label)
        containerView.addSubview(image)
        configureLayouts()
    }
    
    func configureLayouts(){
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: self.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 10),
            containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            image.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            image.trailingAnchor.constraint(equalTo: label.leadingAnchor, constant: -10),
            image.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10),
            image.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -10),
            //            image.heightAnchor.constraint(equalToConstant: 110),
            image.widthAnchor.constraint(equalToConstant: 100),
            label.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10),
//            label.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 10),
            label.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10),
            label.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -10),
            
            
        ])
    }
}
