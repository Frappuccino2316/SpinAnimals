//
//  AnimalSpin.swift
//  StupidSpinAll
//
//  Created by 髙木文弘 on 2021/03/10.
//

import SwiftUI

struct AnimalSpin: View {
    @ObservedObject var timer = SpinTimer(timer: Timer(), angle: 0.0)
    let imageName: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 200, height: 200)
                .rotationEffect(Angle(degrees: timer.angle))
            Button(action: {timer.start()}) {
                Text("Start")
            }
            Button(action: {timer.stop()}) {
                Text("Stop")
            }
        }
    }
}

struct AnimalSpin_Previews: PreviewProvider {
    static var previews: some View {
        AnimalSpin(imageName: "dog")
    }
}
