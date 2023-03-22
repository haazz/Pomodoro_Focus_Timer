//
//  Pomodoro_Timer.swift
//  Pomodoro_Focus_Timer
//
//  Created by 하지원 on 2023/03/16.
//

import SwiftUI

struct PomodoroTimer: View {
    @State var countDownTimer = 5
    @State var countDownRunning = false
    @Binding var progressTime: Int
    
    @State var tmp: String = ""
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            HStack (spacing: 0){
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
                .padding()
            }
            HStack(spacing: 30) {
                if countDownRunning == false {
                    Button (action: {
                       countDownRunning = true
                    }, label: {
                        Image("play")
                            .resizable()
                            .frame(width: 50, height: 50)
                    })
                    Button("Reset") {
                        countDownTimer = 25 * 60
                        countDownRunning = false
                    }.foregroundColor(.white)
                } else {
                    Button("Stop") {
                        countDownRunning = false
                    }.foregroundColor(.white)
                }
            }
        }
    }
}

struct PomodoroTimer_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color(red: 53 / 255, green: 54 / 255, blue: 58 / 255).ignoresSafeArea()
            PomodoroTimer(progressTime: .constant(0))
        }
    }
}
