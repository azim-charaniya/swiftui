//
//  WarCardState.swift
//  Playground
//
//  Created by user204215 on 8/29/21.
//

import Foundation


struct CardState {
    let playerCard: String
    let cpuCard: String
    let playerCurrentScore: Int
    let cpuCurrentScore: Int
}


class WarViewModel{
    private var mutableCardState: CardState
    private var playerScore = 0
    private var cpuScore = 0
    
    init() {
        mutableCardState = CardState(playerCard: "card2", cpuCard: "card2", playerCurrentScore: 0, cpuCurrentScore: 0)
    }
    
    //Make Card State Observable
    public func getCardState() -> CardState{
        return mutableCardState
    }
    
    func dealCards(){
        // Radom 2 card
        let cpu = getRandomCard()
        let player = getRandomCard()
        if(cpu > player){
            cpuScore+=1
        }
        else if(player > cpu){
            playerScore+=1
        }
        
        mutableCardState = CardState(playerCard: "card\(player)", cpuCard: "card\(cpu)", playerCurrentScore: playerScore,cpuCurrentScore: cpuScore)
        
        
        
    }
    
    private func getRandomCard() -> Int{
        return Int.random(in: 2...14)
    }
}
