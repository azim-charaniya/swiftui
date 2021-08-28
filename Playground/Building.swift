//
//  Building.swift
//  Playground
//
//  Created by user204215 on 8/28/21.
//

import SwiftUI

struct Building: View {
    var body: some View {
        VStack{
            ZStack(content: {
                Image("london")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                VStack (alignment: .center, spacing: 10, content: {
                    Text("Big Ben")
                        .font(.largeTitle)
                        .bold()
                    Text("London")
                        .font(.subheadline)
                }).padding()
                .foregroundColor(.white)
                .background(Color.black)
                .opacity(0.7)
                .cornerRadius(8)
            
                
                
            }).padding()
            
        }
    }
}

struct Building_Previews: PreviewProvider {
    static var previews: some View {
        Building()
    }
}
