//
//  ContentView.swift
//  EmojiLover
//
//  Created by Cromuel Barut on 4/22/23.
//

import SwiftUI

enum Emoji: String {
    case 😂, 🥹, 😍, 😇, 😝
}

struct ContentView: View {
    var selection: Emoji = .😂
    
    var body: some View {
        VStack {
            Text(selection.rawValue)
                .font(.system(size: 150))
            Text(selection.rawValue)
                .font(.system(size: 150))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
