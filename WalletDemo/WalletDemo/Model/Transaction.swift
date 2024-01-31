//
//  Transaction.swift
//  WalletDemo
//
//  Created by Bharat Lal on 05/01/24.
//

import Foundation

struct Transaction: Identifiable {
    var id = UUID()
    var merchant: String
    var amount: Double
    var date: String
    var icon: String = "dollarsign.circle.fill"
}

let testTransactions = [
    Transaction(merchant: "Mushroom", amount: 120.0, date: "11/2/2023", icon: "star.circle.fill"),
    Transaction(merchant: "Amazon", amount: 50.0, date: "10/2/2023", icon: "cart.fill"),
    Transaction(merchant: "MUJI", amount: 300.0, date: "8/2/2023", icon: "app.gift.fill"),
    Transaction(merchant: "Apple", amount: 800.0, date: "4/2/2022", icon: "headphones"),
    Transaction(merchant: "Netflix", amount: 19.0, date: "11/2/2023", icon: "tv"),
    Transaction(merchant: "ANA", amount: 480.0, date: "11/2/2023", icon: "airplane")
]
