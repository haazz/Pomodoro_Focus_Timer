//
//  recordFormat.swift
//  Pomodoro_Focus_Timer
//
//  Created by 하지원 on 2023/03/22.
//

import Foundation

class RecordTime: ObservableObject {
    @Published var list: [Int]
    
    init() {
        list = [0, 60*10, 0, 0, 60*1, 60*2, 60*3]
    }
    
    func insert(todayFocusTime: Int) {
        list.insert(todayFocusTime, at: 0)
    }
}
