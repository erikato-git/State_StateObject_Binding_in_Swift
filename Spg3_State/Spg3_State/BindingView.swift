//
//  BindingView.swift
//  Spg3_State
//
//  Created by user183793 on 1/17/21.
//

import SwiftUI

struct BindingView: View {
    @Binding var username: String

    var body: some View {
        Text(username)
            .padding()
        Text("Skriv noget tilbage:")
            .padding()
        TextField("BindingTextField", text: $username)
            .multilineTextAlignment(TextAlignment.center)
            .padding()
    }
}


