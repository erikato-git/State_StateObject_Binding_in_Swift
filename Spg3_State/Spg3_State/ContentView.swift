//
//  ContentView.swift
//  Spg3_State
//
//  Created by user183793 on 1/14/21.
//

import SwiftUI

struct ContentView: View {
    @State var username = "default"
    @StateObject var stateObj = StateObject_Class()
    
    var body: some View {
        VStack{
            Text(username)
                .padding()
            TextField("Nyt brugernavn", text: $username)
                .multilineTextAlignment(TextAlignment.center)
                .padding()
            Text(stateObj.message)
                .padding()
            NavigationView {
                    VStack {
                        NavigationLink(destination: BindingView(username: $username)) {
                            Text("Go to BindingView")
                        }
                    }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
