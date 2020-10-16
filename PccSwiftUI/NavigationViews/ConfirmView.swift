//
//  ConfirmView.swift
//  PccSwiftUI
//
//  Created by Guye Raphael, I233 on 16.10.20.
//

import SwiftUI

struct ConfirmView: View {
    var body: some View {
        
        VStack() {
            
            Spacer()
            
            NavigationLink(
                destination: HomeView()) {
                    Text("Reset and back to home")
            }
            
            Spacer()
            
        }
        .navigationTitle("Confirm")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ConfirmView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmView()
    }
}
