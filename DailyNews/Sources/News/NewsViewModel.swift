//
//  NewsViewModel.swift
//  DailyNews
//
//  Created by noor on 15/09/23.
//

import Foundation


protocol NewsViewModelProtocol {
    func fetchNews()
}

protocol NewsViewModelDelegate: AnyObject{
    func didFinish()
    func didFail(error: Error)
}

final class NewsViewModel: NewsViewModelProtocol {
    
    private(set) var apiService: APIServiceProtocol
    private(set) var articles = [Article]()
    
    weak var delegate: NewsViewModelDelegate?
    
    required init(apiService: APIService = APIService.shared) {
        self.apiService = apiService
    }
    
    func fetchNews() {
        var params: [String : String]? = ["country":"in"]
        apiService.request("top-headlines", params: &params, type: NewsModel.self, completion: completion)
    }
    
    private func completion(result: Result<NewsModel, Error>){
        switch result {
        case .success(let response):
            self.articles = response.articles
            
            DispatchQueue.main.async{ [self] in
                self.delegate?.didFinish()
            }
        case .failure(let error):
            self.delegate?.didFail(error: error)
        }
    }
    
    
}
