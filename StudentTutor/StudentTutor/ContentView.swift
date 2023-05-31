//
//  ContentView.swift
//  StudentTutor
//
//  Created by 陶涛 on 2023/5/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            VStack {
                Text("Instant Developer")
                    .fontWeight(.bold)
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                Text("Get help from experts in 15 minutes")
                    .foregroundColor(.white)
            }
            HStack(alignment: .bottom, spacing: 10) {
                Image("student")
                    .resizable()
                    .scaledToFit()
                Image("tutor")
                    .resizable()
                    .scaledToFit()
            }
            .padding(.horizontal, 60)

            Text("Need help with coding problems? Register!")
                .foregroundColor(.white)

            Spacer()

            VStack {
                Button {

                } label: {
                    Text("Sign Up")
                }
                .frame(width: 200)
                .padding()
                .foregroundColor(.white)
                .background(.indigo)
                .cornerRadius(10)

                Button {

                } label: {
                    Text("Log in")
                }
                .frame(width: 200)
                .padding()
                .foregroundColor(.white)
                .background(.gray)
                .cornerRadius(10)
            }


        }
        .padding()
        .background {
            Image("background")
                .resizable()
                .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
