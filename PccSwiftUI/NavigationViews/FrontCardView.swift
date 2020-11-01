//
//  FrontCardView.swift
//  PccSwiftUI
//
//  Created by Guye Raphael, I233 on 16.10.20.
//

import SwiftUI

struct FrontCardView: View {
    
    @State var selection: Int? = nil
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("This is the Front view")
            
            Spacer()
            
            NavigationLink(destination: BackCardView(),
                           tag: 1,
                           selection: $selection) {
                LargeButton(title: "Next") {
                    print("Next button tapped")
                    self.selection = 1
                }
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
