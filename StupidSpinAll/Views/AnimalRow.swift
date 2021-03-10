//
//  AnimalRow.swift
//  StupidSpinAll
//
//  Created by 髙木文弘 on 2021/03/10.
//

import SwiftUI

struct AnimalRow: View {
    let imageName: String
    
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(imageName)
                .font(.title)
                .padding()
            Spacer()
        }
    }
}

struct AnimalRow_Previews: PreviewProvider {
    static var previews: some View {
        AnimalRow(imageName: "shika")
    }
}
