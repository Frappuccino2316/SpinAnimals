//
//  ContentView.swift
//  StupidSpinAll
//
//  Created by 髙木文弘 on 2021/03/10.
//

import SwiftUI

struct ContentView: View {
    let imageList = ["dog", "fukurou", "ika", "kirin", "shika", "shirokuma", "zarigani"]
    
    var body: some View {
        NavigationView {
            List(0 ..< imageList.count) { index in
                NavigationLink(destination: AnimalSpin(imageName: imageList[index])) {
                    AnimalRow(imageName: imageList[index])
                }
            }
            .navigationTitle("Animals")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
