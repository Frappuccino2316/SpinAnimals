//
//  AnimalSpin.swift
//  StupidSpinAll
//
//  Created by 髙木文弘 on 2021/03/10.
//

import SwiftUI

struct AnimalSpin: View {
    @ObservedObject var timer: SpinTimer
    let imageName: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 200, height: 200)
                .rotationEffect(Angle(degrees: timer.angle))
            VStack {
                HStack {
                    Button(action: {timer.speedDown()}) {
                        Text("Speed Down")
                    }
                    .disabled(timer.spinNow)
                    .padding()
                    Button(action: {timer.speedUp()}) {
                        Text("Speed Up")
                    }
                    .disabled(timer.spinNow)
                    .padding()
                }
                HStack {
                    Button(action: {timer.stop()}) {
                        Text("Stop")
                    }
                    .padding(.horizontal, 20)
                    .padding()
                    Button(action: {timer.start()}) {
                        Text("Start")
                    }
                    .padding()
                }
            }
        }
    }
}

struct AnimalSpin_Previews: PreviewProvider {
    static var previews: some View {
        AnimalSpin(timer: SpinTimer(timer: Timer(), angle: 0.0), imageName: "dog")
    }
}
