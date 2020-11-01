//
//  ConfirmView.swift
//  PccSwiftUI
//
//  Created by Guye Raphael, I233 on 16.10.20.
//

import SwiftUI

struct ConfirmView: View {
    
    @State var selection: Int? = nil
    
    var body: some View {
        
        VStack() {
            
            Spacer()
            
            NavigationLink(
                destination: HomeView(),
                tag: 1,
                selection: $selection) {
                
                LargeButton(title: "Reset and back to home") {
                    print("Next button tapped")
                    self.selection = 1
                }
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
