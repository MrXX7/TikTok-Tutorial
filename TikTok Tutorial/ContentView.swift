//
//  ContentView.swift
//  TikTok Tutorial
//
//  Created by Oncu Ohancan on 5.05.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    
    @State var index = 0
    
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                HStack(spacing: 0) {
                    Button(action: {}, label: {
                        Image("home")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(self.index == 0 ? .white : Color.white.opacity(0.35))
                            .padding(.horizontal)
                    })
                    Spacer(minLength: 0)
                    
                    Button(action: {}, label: {
                        Image("search")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(self.index == 1 ? .white : Color.white.opacity(0.35))
                            .padding(.horizontal)
                    })
                    Spacer(minLength: 0)
                    
                    Button(action: {}, label: {
                        Image("upload")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(.horizontal)
                    })
                    Spacer(minLength: 0)
                    
                    Button(action: {}, label: {
                        Image("comment")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(self.index == 2 ? .white : Color.white.opacity(0.35))
                            .padding(.horizontal)
                    })
                    Spacer(minLength: 0)
                    
                    Button(action: {}, label: {
                        Image("search")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(self.index == 3 ? .white : Color.white.opacity(0.35))
                            .padding(.horizontal)
                    })
                }
                        .padding(.horizontal)
            }
        }
    }
}
