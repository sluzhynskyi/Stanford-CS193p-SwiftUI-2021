//
//  MemoryGame.swift
//  Memorize
//
//  Created by Danylo Sluzhynskyi on 05.01.2023.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: [Card]

    func choose(_ card: Card) {

    }

    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = []

        for pairIndex in 0..<numberOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }

    struct Card {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}


