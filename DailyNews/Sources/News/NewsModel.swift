//
//  NewsModel.swift
//  DailyNews
//
//  Created by noor on 14/09/23.
//

import Foundation

//   let news = try? JSONDecoder().decode(News.self, from: jsonData)

import Foundation

// MARK: - News
struct NewsModel: Codable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable {
    let source: Source
    let author: String?
    let title, description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
    let content: String?
}

// MARK: - Source
struct Source: Codable {
    let id: String?
    let name: String?
}
