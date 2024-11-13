//
//  SelectCurrency.swift
//  LOTRConverter17
//
//  Created by mirabella on 06/11/24.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @State var topCurrency = Currency.silverPenny
    @State var bottomCurrency: Currency = .goldPenny
    
    var body: some View {
        ZStack {
            // Parchment background image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                // Text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                
                // Currency icons
                IconGrid(currency: topCurrency)
                
                // Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                                
                // Currency Icon
                IconGrid(currency: bottomCurrency)
                
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
        .onTapGesture {
            print("SelectCurrency topCurrency: \(topCurrency)")
            print("SelectCurrency bottomCurrency: \(bottomCurrency)")
            
        }
    }
}

// Preview
#Preview {
    SelectCurrency()
}
