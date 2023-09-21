//
//  NewsCollectionViewCell.swift
//  DailyNews
//
//  Created by noor on 13/09/23.
//

import UIKit

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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureCell(_ item: Article){
        label.text = item.title
    }
}

private extension NewsCollectionViewCell {
    func setup (){
        self.contentView.addSubview(containerView)
        containerView.addSubview(label)
        configureLayouts()
    }
    
    func configureLayouts(){
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: self.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 10),
            containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            label.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10),
            label.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            label.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10),
            label.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -10),
            
        ])
    }
}
