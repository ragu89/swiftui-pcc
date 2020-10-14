//
//  BigButton.swift
//  PccSwiftUI
//
//  Created by Guye Raphael, I233 on 14.10.20.
//

import SwiftUI

struct BigButton: View {
    var body: some View {
        
        ZStack {
            
            Color(.systemGray5)
        
            VStack(spacing: 10) {
                Image(systemName: "star")
                    .font(.largeTitle)
                
                Text("Title")
                    .font(.largeTitle)
                
                Text("Subtitle")
                    .font(.subheadline)
            }
            
        }
    }
}

struct BigButton_Previews: PreviewProvider {
    static var previews: some View {
        BigButton()
    }
}
