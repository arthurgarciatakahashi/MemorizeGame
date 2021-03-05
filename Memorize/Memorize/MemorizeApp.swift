//
//  MemorizeApp.swift
//  Memorize
//
//  Created by arthur takahashi on 03/03/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGameView()
            ContentView(viewModel: game)
        }
    }
}
