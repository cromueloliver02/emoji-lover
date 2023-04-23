//
//  ContentView.swift
//  EmojiLover
//
//  Created by Cromuel Barut on 4/22/23.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 😂, 🥹, 😍, 😇, 😝
}

struct ContentView: View {
    @State var selection: Emoji = .😂
    
    var body: some View {
        VStack {
            Text(selection.rawValue)
                .font(.system(size: 150))
            
            Picker("Select Emoji", selection: $selection) {
                ForEach(Emoji.allCases, id: \.self) {
                    emoji in Text(emoji.rawValue)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
