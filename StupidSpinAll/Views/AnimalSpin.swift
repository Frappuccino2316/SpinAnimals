//
//  AnimalSpin.swift
//  StupidSpinAll
//
//  Created by 髙木文弘 on 2021/03/10.
//

import SwiftUI

struct AnimalSpin: View {
    let imageName: String
    @State private var angle: Double = 180.0
    
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 200, height: 200)
            .rotationEffect(Angle(degrees: angle))
    }
}

struct AnimalSpin_Previews: PreviewProvider {
    static var previews: some View {
        AnimalSpin(imageName: "dog")
    }
}
