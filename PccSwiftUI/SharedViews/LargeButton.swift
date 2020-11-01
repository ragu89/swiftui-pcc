//
//  LargeButton.swift
//  PccSwiftUI
//
//  Created by Guye Raphael, I233 on 18.10.20.
// Source: https://stackoverflo..com/questions/58928774/button-border-with-corner-radius-in-swift-ui
//

import SwiftUI

struct LargeButton: View {
    
    private static let buttonHorizontalMargins: CGFloat = 20
    
    var backgroundColor: Color
    var foregroundColor: Color
    
    private let title: String
    private let action: () -> Void
    
    private let disabled: Bool // TODO: Binding
    
    init(title: String,
         disabled: Bool = false,
         backgroundColor: Color = Color.blue,
         foregroundColor: Color = Color.white,
         action: @escaping () -> Void) {
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.title = title
        self.action = action
        self.disabled = disabled
    }
    
    var body: some View {
        HStack {
            Spacer(minLength: LargeButton.buttonHorizontalMargins)
            Button(action:self.action) {
                Text(self.title)
                    .frame(maxWidth:.infinity)
            }
            .buttonStyle(LargeButtonStyle(backgroundColor: backgroundColor,
                                          foregroundColor: foregroundColor,
                                          isDisabled: disabled))
                .disabled(self.disabled)
            Spacer(minLength: LargeButton.buttonHorizontalMargins)
        }
        .frame(maxWidth:.infinity)
    }
}

struct LargeButtonStyle: ButtonStyle {
    
    let backgroundColor: Color
    let foregroundColor: Color
    let isDisabled: Bool
    
    func makeBody(configuration: Self.Configuration) -> some View {
        let currentForegroundColor = isDisabled || configuration.isPressed ? foregroundColor.opacity(0.3) : foregroundColor
        return configuration.label
            .padding()
            .foregroundColor(currentForegroundColor)
            .background(isDisabled || configuration.isPressed ? backgroundColor.opacity(0.3) : backgroundColor)
            // This is the key part, we are using both an overlay as well as cornerRadius
            .cornerRadius(6)
            .overlay(
                RoundedRectangle(cornerRadius: 6)
                    .stroke(currentForegroundColor, lineWidth: 1)
        )
            .padding([.top, .bottom], 10)
            .font(Font.system(size: 19, weight: .semibold))
    }
}

struct LargeButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            
            LargeButton(title: "Default style") {
                print("Hello world")
            }
            
            LargeButton(title: "Green border",
                        backgroundColor: Color.white,
                        foregroundColor: Color.green) {
                print("Hello World")
            }
            
            LargeButton(title: "Yellow background",
                        backgroundColor: Color.yellow) {
                print("Hello World")
            }
        }
    }
}
