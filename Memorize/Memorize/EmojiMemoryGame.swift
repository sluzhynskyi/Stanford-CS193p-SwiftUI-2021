//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Danylo Sluzhynskyi on 05.01.2023.
//

import Foundation
import SwiftUI


class EmojiMemoryGame {

    static let emojis = ["🦋", "🏎", "🩸", "🥎", "🛞", "⛱", "💰", "💎", "🧲", "🪓", "🔪", "🔑", "🎉", "✏️", "🥊", "🎲"]

    private(set) var model = MemoryGame<String>(numberOfPairsOfCards: 5) { pairIndex in
        emojis[pairIndex]
    }

    
}
