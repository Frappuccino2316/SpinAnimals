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
    
    init(timer: Timer, angle: Double) {
        self.timer = timer
        self.angle = angle
    }
    
    func start() {
        self.timer.invalidate()
        self.timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { _ in
            self.angle += 1.0
            if self.angle == 360.0 {
                self.angle = 0.0
            }
       }
    }
    
    func stop() {
        self.timer.invalidate()
    }
}
