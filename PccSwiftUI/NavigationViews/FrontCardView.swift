//
//  FrontCardView.swift
//  PccSwiftUI
//
//  Created by Guye Raphael, I233 on 16.10.20.
//

import SwiftUI

struct FrontCardView: View {
    var body: some View {
        VStack {
            Spacer()
            
            Text("This is the Front view")
            
            Spacer()
            
            NavigationLink(destination: BackCardView()) {
                Text("Next")
            }
            
        }
        .navigationTitle("Front")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FrontCardView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FrontCardView()
        }
    }
}
