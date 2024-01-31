//
//  CardView.swift
//  WalletDemo
//
//  Created by Bharat Lal on 05/01/24.
//

import SwiftUI

struct CardView: View {
    var card: Card

    var body: some View {
        Image(card.image)
            .resizable()
            .scaledToFit()
            .overlay(alignment: .bottomLeading) {
                VStack(alignment: .leading) {
                    Text(card.number)
                        .bold()
                    HStack {
                        Text(card.name)
                            .bold()
                        Text("Valid Thru")
                            .font(.footnote)
                        Text(card.expiryDate)
                            .font(.footnote)
                    }
                }
                .foregroundColor(.white)
                .padding(.leading, 25)
                .padding(.bottom, 20)
            }
            .shadow(color: .gray, radius: 1.0, x: 0.0, y: 1.0)
    }
}

#Preview {
    CardView(
        card: .init(name: "James Hayward", type: .visa, number: "4242 4242 4242 4242", expiryDate: "3/24")
    )
}
