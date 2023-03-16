//
//  Focus_Timer.swift
//  Pomodoro_Focus_Timer
//
//  Created by 하지원 on 2023/03/16.
//

import SwiftUI


struct Focus_Timer: View {
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
                Button("Start") {
                    timerRunning = true
                }.foregroundColor(.white)
                
                Button("Stop") {
                    timerRunning = false
                }.foregroundColor(.white)
            }
        }
    }
}

struct Focus_Timer_Previews: PreviewProvider {
    static var previews: some View {
        Focus_Timer(progressTime: .constant(0))
    }
}
