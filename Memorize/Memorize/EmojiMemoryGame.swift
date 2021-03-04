//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by arthur takahashi on 04/03/21.
//

import SwiftUI

class EmojiMemoryGame {
    var model: MemoryGame<String>
    
    
    // MARK: - Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
}
