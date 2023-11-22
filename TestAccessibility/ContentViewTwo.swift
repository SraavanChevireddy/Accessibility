//
//  ContentViewTwo.swift
//  TestAccessibility
//
//  Created by Sraavan Chevireddy on 20/11/23.
//

import SwiftUI

struct ContentViewTwo: View {
    @Environment(\.dismiss) var dismissAction
    var body: some View {
        Text("Hello, World!")
        Button {
            dismissAction()
        } label: {
            Text("Dont touch me")
        }

    }
}

#Preview {
    ContentViewTwo()
}
