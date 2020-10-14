//
//  HomeView.swift
//  PccSwiftUI
//
//  Created by Guye Raphael, I233 on 14.10.20.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        VStack(spacing:15) {
            
            PccHeader()
            
            BigButton()
            BigButton()
            BigButton()
        }
        .padding(.all, 15)
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
