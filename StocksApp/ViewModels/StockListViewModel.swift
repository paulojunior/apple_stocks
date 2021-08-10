//
//  StockListViewModel.swift
//  StocksApp
//
//  Created by Junior Ferreira on 10/08/21.
//

import Foundation

class StockListViewModel: ObservableObject {
    
    var searchTerm: String = ""
    @Published var stocks: [StockViewModel] = [StockViewModel]()
    
    func load() {
        fetchStocks()
    }
    
    private func fetchStocks() {
        
        WebService().getStocks { stocks in
            if let stocks = stocks {
                DispatchQueue.main.async {
                    self.stocks = stocks.map(StockViewModel.init)
                }
            }
        }
    }
}
