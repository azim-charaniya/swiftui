//
//  PlaygroundApp.swift
//  Playground
//
//  Created by user204215 on 8/28/21.
//

import SwiftUI

@main
struct PlaygroundApp: App {
    
    @Environment(\.scenePhase) var scenePhase
    
    init() {
        dummyCode()
        Networking.get("https://reqres.in/api/users?page=2")
    }
    var body: some Scene {
        WindowGroup {
            WarView()
        }
        .onChange(of: scenePhase) { phase in
            
            switch phase{
            case .active:
                print("Active")
            case .inactive:
                print("Inactive")
            case .background:
                print("Background")
            @unknown default:
                print("New case added by apple")
            }
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
