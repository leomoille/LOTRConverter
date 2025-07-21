//
//  IconGridView.swift
//  LOTRConverter
//
//  Created by Léo Moille on 20/07/2025.
//

import SwiftUI

struct IconGridView: View {
    @Binding var selectedCurrency: Currency
    
    var body: some View {
        
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
            ForEach(Currency.allCases) { currency in
                if selectedCurrency == currency {
                    CurrencyIconView(currencyIcon: currency.image, currencyName: currency.name)
                        .shadow(color: .black, radius: 10)
                        .overlay {
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(lineWidth: 3)
                                .opacity(0.5)
                        }
                } else {
                    CurrencyIconView(currencyIcon: currency.image, currencyName: currency.name)
                        .onTapGesture {
                            selectedCurrency = currency
                        }
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var selectedCurrency: Currency = .silverPiece
    IconGridView(selectedCurrency: $selectedCurrency)
}
