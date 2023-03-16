//
//  ContentView.swift
//  Pomodoro_Focus_Timer
//
//  Created by 하지원 on 2023/03/15.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 1
    
    var body: some View{
        TabView(selection: $selection){
            Record_Timer().tag(0)
            Pomodoro_Timer().tag(1)
            Focus_Timer().tag(2)
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
