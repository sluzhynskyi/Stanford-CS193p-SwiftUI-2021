//
//  MemoryGame.swift
//  Memorize
//
//  Created by Danylo Sluzhynskyi on 05.01.2023.
//

import Foundation

struct MemoryGame<CardContent> where CardContent: Equatable {
    var cards: [Card]
    var facedUpCardIndex: Int?

    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = []

        for pairIndex in 0..<numberOfPairsOfCards {
            let content = createCardContent(pairIndex)

            cards.append(Card(id: pairIndex * 2, content: content))
            cards.append(Card(id: pairIndex * 2 + 1, content: content))
        }
    }

    mutating func choose(_ card: Card) {
        guard let index = cards.firstIndex(where: {$0.id == card.id }),
              !cards[index].isFaceUp,
              !cards[index].isMatched
        else { return }

        if let facedUpCardIndex = facedUpCardIndex {
            if cards[facedUpCardIndex].content == cards[index].content {
                cards[facedUpCardIndex].isMatched = true
                cards[index].isMatched = true
            }

            self.facedUpCardIndex = nil
        } else {
            cards.indices.forEach { index in
                cards[index].isFaceUp = false
            }

            self.facedUpCardIndex = index
        }

        cards[index].isFaceUp.toggle()
    }

    struct Card: Identifiable {
        var id: Int
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}


