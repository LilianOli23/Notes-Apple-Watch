//
//  CreditsView.swift
//  Notes WatchKit Extension
//
//  Created by Lilian De Oliveira Silva on 01/06/22.
//

import SwiftUI

struct CreditsView: View {
    // MARK: - PROPERTY
    
    @State private var randomNumber: Int = Int.random(in: 1..<4)
    
    private var randomImage: String {
        return "developer-no\(randomNumber)"
    }
    
    
    // MARK: - BODY


    var body: some View {
        VStack(spacing: 3) {
            // PROFILE IMAGE
            Image(randomImage)
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            
            // HEADER
            HeaderView(title: "Credits")
            // CONTENT
            Text("LilianOS")
                .foregroundColor(.primary)
                .fontWeight(.bold)
            
            Text("iOS Developer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
            
        }//: VSTACK
    }
}
// MARK: - PREVIEW

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
