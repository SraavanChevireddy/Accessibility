//
//  ContentView.swift
//  TestAccessibility
//
//  Created by Sraavan Chevireddy on 20/11/23.
//

import SwiftUI

enum FocusTesting: Hashable {
    case mycase, none
}

struct ContentView: View {
    @State private var show: Bool = false
    @AccessibilityFocusState var focus: FocusTesting?
    
    var body: some View {
        VStack {
            Text("Bye")
            
            Text("Testing Testing Testing")
//                .id(FocusTesting.mycase)
//                .accessibilityIdentifier("myCase")
                .accessibilityFocused($focus, equals: .mycase)
            
            Text("Hi")
            
            Button(action: {
                show = true
            }, label: {
                Text("Tap me")
                    .accessibilityIdentifier("xs")
//                    .accessibilityAction(.escape) {
//                        focus = .mycase
//                    }
            })
            .sheet(isPresented: $show) {
                ContentViewTwo()
            }
            .onChange(of: show) { newValue in
                if !newValue {
                    print("Voila!!")
//                    UIAccessibility.post(notification: .announcement, argument: nil)
//                    UIAccessibility.post(notification: .screenChanged, argument: nil)
                    focus = .mycase
                }
            }
        }
    }
}
