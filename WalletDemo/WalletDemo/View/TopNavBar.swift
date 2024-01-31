//
//  TopNavBar.swift
//  WalletDemo
//
//  Created by Bharat Lal on 05/01/24.
//

import SwiftUI

struct TopNavBar: View {
    var body: some View {
        HStack {
            Text("Wallet")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.heavy)

            Spacer()

            Image(systemName: "plus.circle.fill")
                .font(.system(.title))
        }
        .padding(.horizontal)
        .padding(.top, 20)
    }
}

#Preview {
    TopNavBar()
}
