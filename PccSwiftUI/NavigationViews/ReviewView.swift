//
//  ReviewView.swift
//  PccSwiftUI
//
//  Created by Guye Raphael, I233 on 16.10.20.
//

import SwiftUI

struct ReviewView: View {
    var body: some View {
        VStack {
            Spacer()
            
            Text("This is the Review view")
            
            Spacer()
            
            NavigationLink(destination: ConfirmView()) {
                Text("Next")
            }
            
        }
        .navigationTitle("Review")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ReviewView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewView()
    }
}
