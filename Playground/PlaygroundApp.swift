//
//  PlaygroundApp.swift
//  Playground
//
//  Created by user204215 on 8/28/21.
//

import SwiftUI

@main
struct PlaygroundApp: App {
    var body: some Scene {
        WindowGroup {
            
            ContentView()
        }
    }
}



func dummyCode(){
    print("Hello World")
    let immutableString = "Hello This will not change"
    var mutableString = "Change String"
    print(immutableString)
    print(mutableString)
    mutableString += " New Append"
    //immutableString = "asd"
    // The Above line will give error
    print(mutableString)
}
