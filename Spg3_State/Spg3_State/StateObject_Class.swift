//
//  StateObject_Class.swift
//  Spg3_State
//
//  Created by user183793 on 1/17/21.
//

import Foundation

class StateObject_Class: ObservableObject {
    @Published var message: String
    var count: Int
    
    init(){
        message = ""
        count = 0
        
        _ = Timer.scheduledTimer(withTimeInterval: 1, repeats: true){ _ in
            self.count = self.count + 1
            self.message = "Fra StateObject_Class \(self.count)"
        }
    }

}
