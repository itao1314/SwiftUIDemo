//
//  ContentView.swift
//  HelloWorld
//
//  Created by 陶涛 on 2023/4/7.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    let synthesizer = AVSpeechSynthesizer()
    var body: some View {
        VStack {
            Button {
                let utterance = AVSpeechUtterance(string: "Hello World")
                utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
                synthesizer.speak(utterance)
            } label: {
                Text("Hello World")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
            }
            .padding()
            .foregroundColor(.white)
            .background(.purple)
            .cornerRadius(20)

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
