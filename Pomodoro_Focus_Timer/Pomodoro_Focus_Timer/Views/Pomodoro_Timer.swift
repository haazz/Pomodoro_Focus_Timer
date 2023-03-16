//
//  Pomodoro_Timer.swift
//  Pomodoro_Focus_Timer
//
//  Created by 하지원 on 2023/03/16.
//

import SwiftUI

struct Pomodoro_Timer: View {
    @State var countDownTimer = 25 * 60
    @State var countDownRunning = false
    @Binding var progressTime: Int
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            Text("\(pomoFormat(progressTime: countDownTimer))").onReceive(timer) { _ in if countDownTimer > (-60 * 60) && countDownRunning {
                    countDownTimer -= 1
                    progressTime += 1
                } else {
                    countDownRunning = false
                }
            }
            .foregroundColor(.white)
            .font(.system(size: 80, weight: .bold))
            .opacity(0.80)
            HStack(spacing: 30) {
                Button("Start") {
                    countDownRunning = true
                }.foregroundColor(.white)
                
                Button("Reset") {
                    countDownTimer = 25 * 60
                    countDownRunning = false
                }.foregroundColor(.white)
            }
        }
    }
}

struct Pomodoro_Timer_Previews: PreviewProvider {
    static var previews: some View {
        Pomodoro_Timer(progressTime: .constant(0))
    }
}
