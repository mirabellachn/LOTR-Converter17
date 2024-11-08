//
//  SelectCurrency.swift
//  LOTRConverter17
//
//  Created by mirabella  on 06/11/24.
//

import SwiftUI

struct SelectCurrency: View {
        @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            // Parchment background image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                // Text
                Text("Select the currency you ate starting with:")
                    .fontWeight(.bold)
                
                // Currency icons
                CurrencyIcon(currencyImage: .copperpenny, currencyName: "Copper Penny")
                
                // Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                
                // Currency icons
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                    ForEach(Currency.allCases) { currency in
                        CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                    }
                }
                
                // Done button
                Button("Done") {
                    dismiss()
                }
                    .buttonStyle(.borderedProminent)
                    .tint(.brown)
                    .font(.largeTitle)
                    .padding()
                    .foregroundStyle(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency()
}
