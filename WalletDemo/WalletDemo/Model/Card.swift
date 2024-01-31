//
//  Card.swift
//  WalletDemo
//
//  Created by Bharat Lal on 05/01/24.
//

import Foundation

enum CardType: String {
    case visa
    case master
    case ae
    case chase
    case discover
}

struct Card: Identifiable {
    private static let cardOffset: CGFloat = 50.0

    var id = UUID()
    var name: String
    var type: CardType
    var number: String
    var expiryDate: String
    var image: String {
        return type.rawValue
    }

    func index() -> Int? {
        guard let index = testCards.firstIndex(where: { $0.id == self.id }) else {
            return nil
        }

        return index
    }
}

let testCards = [
    Card(name: "James Hayward", type: .visa, number: "4242 4242 4242 4242", expiryDate: "3/24"),
    Card(name: "Cassie Emily", type: .master, number: "5353 5353 5353 5353", expiryDate: "10/25"),
    Card(name: "Adam Green", type: .ae, number: "3737 3737 3737 3737", expiryDate: "8/25"),
    Card(name: "Donald Wayne", type: .chase, number: "6363 6263 6362 6111", expiryDate: "11/24"),
    Card(name: "Gloria Jane", type: .discover, number: "6011 0009 9013 9424", expiryDate: "5/24")
]
