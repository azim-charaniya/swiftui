//
//  WarVire.swift
//  Playground
//
//  Created by user204215 on 8/28/21.
//

import SwiftUI

struct WarView: View {
    var body: some View {
        ZStack{
            Image("background")
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image("card3")
                    Spacer()
                    Image("card4")
                    Spacer()
                }
                Spacer()
                Image("dealbutton")
                Spacer()
                HStack{
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                Spacer()
            }
            .foregroundColor(.white)
            .padding()
        }
    }
}

struct WarVire_Previews: PreviewProvider {
    static var previews: some View {
        WarView()
            .previewDevice("iPhone 11")
           
    }
}
