//
//  ContentView.swift
//  Playground
//
//  Created by user204215 on 8/28/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .bold()
            .font(.title)
            .padding()
            .foregroundColor(.black)
            .background(Color.green.opacity(0.7))
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}
