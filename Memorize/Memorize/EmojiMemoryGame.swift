//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by arthur takahashi on 04/03/21.
//

import SwiftUI

class EmojiMemoryGame {
    var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["🤖","🤡","👻","🐥"]
        return MemoryGame<String>(numberOfPairOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    // MARK: - Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
}
