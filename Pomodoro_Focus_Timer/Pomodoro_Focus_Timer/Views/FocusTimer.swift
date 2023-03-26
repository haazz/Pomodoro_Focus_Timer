//
//  FocusTimer.swift
//  Pomodoro_Focus_Timer
//
//  Created by 하지원 on 2023/03/16.
//

import SwiftUI


struct FocusTimer: View {
    @Binding var progressTime: Int
    @State var timerRunning = false
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        
        VStack {
            
            Text("\(timeFormat(progressTime:progressTime))").onReceive(timer) { _ in if progressTime < 86400 && timerRunning {
                progressTime += 1
            } else {
                timerRunning = false
            }
            }
            .foregroundColor(.white)
            .font(.system(size: 65, weight: .bold))
            
            HStack(spacing: 30) {
                if (timerRunning == false) {
                    Button (action: {
                        timerRunning = true
                    }, label: {
                        Image("play")
                            .resizable()
                            .frame(width: 50, height: 50)
                    })
                } else {
                    Button (action: {
                        timerRunning = false
                    }, label: {
                        Image("pause")
                            .resizable()
                            .frame(width: 50, height: 50)
                    })
                }
            }
        }
    }
}

struct FocusTimer_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color(red: 53 / 255, green: 54 / 255, blue: 58 / 255).ignoresSafeArea()
            FocusTimer(progressTime:
                    .constant(0))
        }
    }
}
