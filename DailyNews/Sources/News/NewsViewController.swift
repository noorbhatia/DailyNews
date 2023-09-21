//
//  NewsViewController.swift
//  DailyNews
//
//  Created by noor on 11/09/23.
//

import UIKit

class NewsViewController: UIViewController {
    private var viewModel = NewsViewModel()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        viewModel.delegate = self
        DispatchQueue.main.async{ [self] in
            self.viewModel.fetchNews()

        }
        
    }
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = .init(width: UIScreen.main.bounds.width, height: 100)
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.dataSource = self
        view.register(NewsCollectionViewCell.self, forCellWithReuseIdentifier: "NewsCollectionViewCell")
        return view
    }()
    
}
extension NewsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         viewModel.articles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NewsCollectionViewCell", for: indexPath) as! NewsCollectionViewCell
        cell.configureCell(viewModel.articles[indexPath.item])
        return cell
    }
    
    
}

private extension NewsViewController {
    func setup(){
        self.view.addSubview(collectionView)
        configureLayouts()
    }
    
    func configureLayouts(){
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}

extension NewsViewController: NewsViewModelDelegate {
    func didFinish() {
        collectionView.reloadData()
    }
    
    func didFail(error: Error) {
        print(error)
    }
    
    
}
