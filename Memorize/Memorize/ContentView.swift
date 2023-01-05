    //
    //  ContentView.swift
    //  Memorize
    //
    //  Created by Danylo Sluzhynskyi on 22.06.2021.
    //

import SwiftUI

struct ContentView: View {
    var emojis = ["🦋", "🏎", "🩸", "🥎", "🛞", "⛱", "💰", "💎", "🧲", "🪓", "🔪", "🔑", "🎉", "✏️", "🥊", "🎲"]

    @State var emojiCount = 10

    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self) {
                        CardView(content: $0).aspectRatio(2/3, contentMode: .fit)
                    }
                }
                .foregroundColor(.red)
            }
        }
        .padding(.horizontal)
    }
}


struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true

    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)

            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 2)

                Text(content)
                    .font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
