//
//  ContentView.swift
//  Pomodoro_Focus_Timer
//
//  Created by 하지원 on 2023/03/15.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 1
    @State var progressTime = 0
    
    var body: some View{
        ZStack{
            Color(red: 53 / 255, green: 54 / 255, blue: 58 / 255).ignoresSafeArea()
            TabView(selection: $selection){
                Record_Timer().tag(0)
                Pomodoro_Timer(progressTime: $progressTime).tag(1)
                Focus_Timer(progressTime: $progressTime).tag(2)
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
