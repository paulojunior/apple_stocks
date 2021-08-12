//
//  ContentView.swift
//  StocksApp
//
//  Created by Junior Ferreira on 10/08/21.
//

import SwiftUI

struct ContentView: View {
    
    //@State private var searchTerm: String = ""
    @ObservedObject private var stockListVM = StockListViewModel()
    
    
    init() {
        UINavigationBar.appearance().backgroundColor = UIColor.black
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UITableView.appearance().backgroundColor = UIColor.black
        UITableViewCell.appearance().backgroundColor = UIColor.black
        
        stockListVM.load()
    }
    
    var body: some View {
        NavigationView {
            
            ZStack(alignment: .leading) {
                
                Color.black
                
                Text("Augost 10 2021")
                    .font(.custom("Arial", size: 32))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.gray)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                        .offset(y: -350)
                
                
                SearchView(searchTerm: self.$stockListVM.searchTerm)
                    .offset(y: -300)
                
                StockListView(stocks: self.stockListVM.stocks)
                    .offset(y: 150)
            }
            
            .navigationBarTitle("Stocks")
        }.edgesIgnoringSafeArea(Edge.Set(.leading))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
