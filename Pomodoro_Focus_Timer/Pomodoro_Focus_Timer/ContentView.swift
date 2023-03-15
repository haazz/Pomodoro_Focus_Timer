//
//  ContentView.swift
//  Pomodoro_Focus_Timer
//
//  Created by 하지원 on 2023/03/15.
//

import SwiftUI

struct ContentView: View {
    @State var countDownTimer = 5
    @State var timerRunning = false
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            Text("\(countDownTimer)").onReceive(timer) { _ in if countDownTimer > 0 && timerRunning {
                    countDownTimer -= 1
                } else {
                    timerRunning = false
                }
            }
            .font(.system(size: 80, weight: .bold))
            .opacity(0.80)
            HStack(spacing: 30) {
                Button("Start") {
                    timerRunning = true
                }
                
                Button("Reset") {
                    countDownTimer = 5
                }.foregroundColor(.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
