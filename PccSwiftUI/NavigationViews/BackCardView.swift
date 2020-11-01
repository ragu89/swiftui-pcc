//
//  BackCardView.swift
//  PccSwiftUI
//
//  Created by Guye Raphael, I233 on 16.10.20.
//

import SwiftUI

struct BackCardView: View {
    
    @State var selection: Int? = nil
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("This is the Back view")
            
            Spacer()
            
            NavigationLink(destination: ReviewView(),
                           tag: 1,
                           selection: $selection) {
                LargeButton(title: "Next") {
                    print("Next button tapped")
                    self.selection = 1
                }
            }
            
        }
        .navigationTitle("Back")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct BackCardView_Previews: PreviewProvider {
    static var previews: some View {
        BackCardView()
    }
}
