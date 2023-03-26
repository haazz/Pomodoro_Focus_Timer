//
//  RecordTimer.swift
//  Pomodoro_Focus_Timer
//
//  Created by 하지원 on 2023/03/16.
//

import SwiftUI

struct RecordTimer: View {
    @Binding var progressTime: Int
    @State private var recordTime = RecordTime()
    
    var body: some View {
        HStack{
            ForEach(0..<5) { i in
                VStack{
                    if (recordTime.list[i] == 0) {
                        Image("timeBar1").resizable()
                            .frame(width: 50, height: 200)
                            .padding(3)
                    } else if (recordTime.list[i] <= 60*60) {
                        Image("timeBar2").resizable()
                            .frame(width: 50, height: 200)
                            .padding(3)
                    } else if (recordTime.list[i] <= 60*60*3) {
                        Image("timeBar3").resizable()
                            .frame(width: 50, height: 200)
                            .padding(3)
                    } else if (recordTime.list[i] <= 60*60*5) {
                        Image("timeBar4").resizable()
                            .frame(width: 50, height: 200)
                            .padding(3)
                    } else {
                        Image("timeBar5").resizable()
                            .frame(width: 50, height: 200)
                            .padding(3)
                    }
                    Text(hour(progressTime: recordTime.list[i]) + ":" + sec(progressTime: recordTime.list[i]))
                        .foregroundColor(.white)
                }
            }
        }
        
    }
}

struct RecordTimer_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color(red: 53 / 255, green: 54 / 255, blue: 58 / 255).ignoresSafeArea()
            RecordTimer(progressTime: .constant(5))
        }
    }
}
