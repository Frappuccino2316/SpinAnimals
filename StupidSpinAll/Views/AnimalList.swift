//
//  AnimalList.swift
//  StupidSpinAll
//
//  Created by 髙木文弘 on 2021/03/10.
//

import SwiftUI

struct AnimalList: View {
    let animalList: [String]
    var body: some View {
        List(0 ..< animalList.count) { index in
            NavigationLink(
                destination: Text("\(index)")) {
                AnimalRow(imageName: animalList[index])
            }
        }
    }
}

struct AnimalList_Previews: PreviewProvider {
    static var previews: some View {
        AnimalList(animalList: ["dog", "fukurou", "ika", "kirin", "shika", "shirokuma", "zarigani"])
    }
}
