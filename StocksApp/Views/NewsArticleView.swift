//
//  NewsArticleView.swift
//  StocksApp
//
//  Created by Junior Ferreira on 13/08/21.
//

import SwiftUI

struct NewsArticleView: View {
    
    let newsArticles: [NewsArticleViewModel]
    
    var body: some View {
            
        let screenSize = UIScreen.main.bounds.size
        
        return VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text("Top news")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(2)
                
                Text("From news")
                    .foregroundColor(Color.gray)
                    .font(.body)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    padding(2)
                
                
                ScrollView {
                    VStack {
                        ForEach(self.newsArticles, id: \.title) {
                            article in
                            HStack {
                                VStack(alignment: .leading) {
                                    Text(article.publication)
                                        .foregroundColor(Color.white)
                                        .font(.custom("Arial", size: 22))
                                        .fontWeight(.bold)
                                    
                                    Text(article.title)
                                        .font(.custom("Arial", size: 22))
                                        .foregroundColor(Color.white)
                                }
                                Spacer()
                            }
                        }
                    }.frame(maxWidth: .infinity)
                }
            }
        }.frame(width: screenSize.width, height: screenSize.height)
        .background(Color(red: 27/255, green: 28/255, blue: 30/255))
        .cornerRadius(20)
    }
}

struct NewsArticleView_Previews: PreviewProvider {
    static var previews: some View {
        
        let article = Article(title: "News Title", imageUrl: "https://unafisconacional.org.br/wp-content/uploads/2020/09/Fake.jpg", publication: "The WallStreet Journal")
        
       return NewsArticleView(newsArticles: [NewsArticleViewModel(article: article)])
    }
}
