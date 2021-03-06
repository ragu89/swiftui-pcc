//
//  ReviewView.swift
//  PccSwiftUI
//
//  Created by Guye Raphael, I233 on 16.10.20.
//

import SwiftUI

struct ReviewView: View {
    
    @State var selection: Int? = nil
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("This is the Review view")
            
            Spacer()
            
            NavigationLink(destination: ConfirmView(),
                           tag: 1,
                           selection: $selection) {
                LargeButton(title: "Next") {
                    print("Next button tapped")
                    self.selection = 1
                }
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
