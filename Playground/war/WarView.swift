//
//  WarVire.swift
//  Playground
//
//  Created by user204215 on 8/28/21.
//

import SwiftUI

struct WarView: View {
    
    private let viewModel = WarViewModel()
    @State private var state: CardState
    
    init() {
        //TODO: Make this in a observable
        state = viewModel.getCardState()
    }
    
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
                    Image(state.playerCard)
                    Spacer()
                    Image(state.cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    print("Deal Button Clicked")
                    viewModel.dealCards()
                    state = viewModel.getCardState()
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                HStack{
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text("\(state.playerCurrentScore)")
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text("\(state.cpuCurrentScore)")
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
