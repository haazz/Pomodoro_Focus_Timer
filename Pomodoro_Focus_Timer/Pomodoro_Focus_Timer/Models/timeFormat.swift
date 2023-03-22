//
//  Pocus_Timer.swift
//  Pomodoro_Focus_Timer
//
//  Created by 하지원 on 2023/03/16.
//

import Foundation
import SwiftUI

func hour(progressTime: Int) -> String {
    if (progressTime / 3600) < 10 {
        return "0" + String(progressTime / 3600)
    }
    return String(progressTime / 3600)
}

func min(progressTime: Int) -> String {
    if ((progressTime % 3600) / 60) < 10 {
        return "0" + String((progressTime % 3600) / 60)
    }
    return String((progressTime % 3600) / 60)
}

func sec(progressTime: Int) -> String {
    if (progressTime % 60) < 10 {
        return "0" + String(progressTime % 60)
    }
    return String(progressTime % 60)
}

// Format for focus timer
func timeFormat(progressTime: Int) -> String {
    return hour(progressTime: progressTime) + ":" +
        min(progressTime: progressTime) + ":" + sec(progressTime: progressTime)
}

// Format for pomodoro timer
func pomoFormat(progressTime: Int) -> String {
    if (progressTime / 3600) >= 1 {
        return timeFormat(progressTime: progressTime)
    }
    return min(progressTime: progressTime) + ":" + sec(progressTime: progressTime)
}
