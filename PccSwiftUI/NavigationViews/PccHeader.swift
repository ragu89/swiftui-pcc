//
//  PccHeader.swift
//  PccSwiftUI
//
//  Created by Guye Raphael, I233 on 14.10.20.
//

import SwiftUI

struct PccHeader: View {
    var body: some View {
        
        HStack {
            
            Image(systemName: "sidebar.squares.left")
                .font(Font.largeTitle.weight(.thin))
            
            Spacer()
            
            Image(systemName: "photo")
                .font(Font.largeTitle.weight(.thin))
            
            Spacer()
            
            Image(systemName: "questionmark.circle")
                .font(Font.largeTitle.weight(.thin))
        }
        
    }
}

struct PccHeader_Previews: PreviewProvider {
    static var previews: some View {
        PccHeader()
    }
}
