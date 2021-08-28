//
//  ContentView.swift
//  Playground
//
//  Created by user204215 on 8/28/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("BackgroundWall")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
            Text("Hello, world!")
                .bold()
                .font(.title)
                .padding()
                .foregroundColor(.black)
                .background(Color.green.opacity(0.7))
            
            VStack {
                Spacer()
                HStack(alignment: .bottom, spacing: 30, content: {
                    Text("Place Holder 1")
                    Text("Place Holder 2")
                    
                })
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}
