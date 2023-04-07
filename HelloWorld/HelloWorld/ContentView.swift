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
                speak(text: "Hello Programming")
            } label: {
                Text("Hello Programming")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
            }
            .padding()
            .foregroundColor(.white)
            .background(.yellow)
            .cornerRadius(20)

            Button {
                speak(text: "Hello World")
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
    }

    func speak(text: String) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
        synthesizer.speak(utterance)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
