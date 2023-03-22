//
//  recordFormat.swift
//  Pomodoro_Focus_Timer
//
//  Created by 하지원 on 2023/03/22.
//

import Foundation

class RecordTime: Identifiable, ObservableObject {
    let id: UUID
    @Published var time: Int
    let insertDate: Date
    
    init(time: Int, insertDate: Date = Date.now) {
        id = UUID()
        self.time = time
        self.insertDate = insertDate
    }
}
