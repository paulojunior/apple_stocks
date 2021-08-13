//
//  NewsArticleViewModel.swift
//  StocksApp
//
//  Created by Junior Ferreira on 13/08/21.
//

import Foundation

struct NewsArticleViewModel {
    
    let article: Article
    
    var imageURL: String {
        return self.article.imageUrl
    }
    
    var title: String {
        return self.article.title
    }
    
    var publication: String {
        return self.article.publication.uppercased()
    }
}
