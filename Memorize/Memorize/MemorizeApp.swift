//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Danylo Sluzhynskyi on 22.06.2021.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()

    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
