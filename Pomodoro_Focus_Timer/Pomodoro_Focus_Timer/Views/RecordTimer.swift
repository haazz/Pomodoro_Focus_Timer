//
//  RecordTimer.swift
//  Pomodoro_Focus_Timer
//
//  Created by 하지원 on 2023/03/16.
//

import SwiftUI

struct RecordTimer: View {
    @Binding var progressTime: Int

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
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
