//
//  Stocks.swift
//  StocksApp
//
//  Created by Junior Ferreira on 10/08/21.
//

import Foundation

//
//  Stock.swift
//  StocksApp
//
//  Created by Junior Ferreira on 10/08/21.
//

import Foundation


struct Stock: Decodable {
    let symbol: String
    let description: String
    let price: Double
    let change: String
}
