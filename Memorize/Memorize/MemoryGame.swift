//
//  MemorizeGame.swift
//  Memorize
//
//  Created by arthur takahashi on 04/03/21.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    init(numberOfPairOfCards: Int) {
        cards = Array<Card>()
        
    }
    
    func choose(card: Card) {
        print("card chosen: \(card)")
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
        
    }
}
