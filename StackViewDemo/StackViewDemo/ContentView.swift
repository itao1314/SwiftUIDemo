//
//  ContentView.swift
//  StackViewDemo
//
//  Created by 陶涛 on 2023/5/26.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var body: some View {
        VStack(spacing: 20) {
            VStack {
                Text("Instant Developer")
                    .fontWeight(.medium)
                    .font(.system(size: 40))
                    .foregroundColor(.indigo)
                
                Text("Get help from experts in 15 minutes")
            }
            
            HStack(alignment: .bottom, spacing: 10) {
                Image("user1")
                    .resizable()
                    .scaledToFit()
                
                Image("user2")
                    .resizable()
                    .scaledToFit()
                
                Image("user3")
                    .resizable()
                    .scaledToFit()
            }
            .padding(.horizontal, 20)
            
            Text("Need help with coding problems? Register!")
            
            Spacer()
            
            if verticalSizeClass == .compact {
                HSignUpButtonGroup()
            } else {
                VSignUpButtonGroup()
            }
            
        }
        .padding(.top, 30)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
                .previewDisplayName("iPhone 12 Pro Max")
            
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro Max"))
                .previewDisplayName("iPhone 14 Pro Max")
            
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 12 mini"))
                .previewDisplayName("iPhone 12 mini")
                .previewInterfaceOrientation(.landscapeLeft)
            
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPad Air (5th generation)"))
                .previewDisplayName("iPad Air (5th generation)")
        }
    }
}

struct VSignUpButtonGroup: View {
    var body: some View {
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
                Text("Login In")
            }
            .frame(width: 200)
            .padding()
            .foregroundColor(.white)
            .background(.gray)
            .cornerRadius(10)
        }
    }
}

struct HSignUpButtonGroup: View {
    var body: some View {
        HStack {
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
                Text("Login In")
            }
            .frame(width: 200)
            .padding()
            .foregroundColor(.white)
            .background(.gray)
            .cornerRadius(10)
        }
    }
}

