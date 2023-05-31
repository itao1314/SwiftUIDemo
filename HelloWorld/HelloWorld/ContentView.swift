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

            Text("猜猜这些电影")
                .font(.title)
            Text("你能从这些表情猜出电影吗？")
                .font(.body)
            Text("点击按钮查看正确答案。")
                .font(.body)
            Button {
                speak(text: "电影1")
            } label: {
                Text("🧓👩🏽‍🦱🕵🏿‍♂️")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
            }
            .padding()
            .foregroundColor(.white)
            .background(.green)
            .cornerRadius(20)

            Button {
                speak(text: "电影2")
            } label: {
                Text("🌧️")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
            }
            .padding()
            .foregroundColor(.white)
            .background(.yellow)
            .cornerRadius(20)

            Button {
                speak(text: "电影3")
            } label: {
                Text("☔️")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
            }
            .padding()
            .foregroundColor(.white)
            .background(.blue)
            .cornerRadius(20)

            Button {
                speak(text: "电影14")
            } label: {
                Text("🪐")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
            }
            .padding()
            .foregroundColor(.white)
            .background(.gray)
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
