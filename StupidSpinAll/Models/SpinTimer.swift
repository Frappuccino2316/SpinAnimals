//
//  SpinTimer.swift
//  StupidSpinAll
//
//  Created by 髙木文弘 on 2021/03/10.
//

import Foundation

class SpinTimer: ObservableObject {
    @Published var timer: Timer
    @Published var angle: Double
    @Published var speed: Double = 0.04
    @Published var spinNow: Bool = false
    
    init(timer: Timer, angle: Double) {
        self.timer = timer
        self.angle = angle
    }
    
    func start() {
        timer.invalidate()
        spinNow = true
        timer = Timer.scheduledTimer(withTimeInterval: speed, repeats: true) { _ in
            self.angle += 1.0
            if self.angle == 360.0 {
                self.angle = 0.0
            }
       }
    }
    
    func stop() {
        timer.invalidate()
        spinNow = false
    }
    
    func speedUp() {
        if speed <= 0.0025 {
            return
        }
        speed = speed / 2
    }
    
    func speedDown() {
        if speed >= 0.04 {
            return
        }
        speed = speed * 2
    }
}
