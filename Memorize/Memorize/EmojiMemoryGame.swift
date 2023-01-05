//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Danylo Sluzhynskyi on 05.01.2023.
//

import Foundation
import SwiftUI


class EmojiMemoryGame: ObservableObject {
    static let emojis = ["🦋", "🏎", "🩸", "🥎", "🛞", "⛱", "💰", "💎", "🧲", "🪓", "🔪", "🔑", "🎉", "✏️", "🥊", "🎲"]

    @Published private(set) var model = MemoryGame<String>(numberOfPairsOfCards: 5) { pairIndex in
        emojis[pairIndex]
    }

    var cards: [MemoryGame<String>.Card] {
        return model.cards
    }

    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
