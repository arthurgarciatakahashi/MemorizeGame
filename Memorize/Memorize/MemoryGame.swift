import Foundation

struct MemoryGame<CardContent> where CardContent: Equatable{
    private(set) var cards: Array<Card>
    
    var indexOfTheOneAndOnlyFaceUpCard: Int? {
        get {
            cards.indices.filter { cards[$0].isFaceUp }.only
        }

        set{
            for index in cards.indices {
                cards[index].isFaceUp = index == newValue
            }
        }
    }
    
    mutating func choose(card: Card) {
        print("card chosen: \(card)")
        if let chosenIndex: Int = cards.firtIndex(matching: card),
           !cards[chosenIndex].isFaceUp,
           !cards[chosenIndex].isMatched {
            if let potentialMatchIndex = indexOfTheOneAndOnlyFaceUpCard {
                if cards[chosenIndex].content == cards[potentialMatchIndex].content {
                    cards[chosenIndex].isMatched = true
                    cards[potentialMatchIndex].isMatched = true
                }
                self.cards[chosenIndex].isFaceUp = true
            } else {
                indexOfTheOneAndOnlyFaceUpCard = chosenIndex
            }
        }
    }
    
    init(numberOfPairOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(id: pairIndex*2, content: content))
            cards.append(Card(id: pairIndex*2 + 1, content: content))
        }
    }

    struct Card: Identifiable {
        var id: Int
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}
