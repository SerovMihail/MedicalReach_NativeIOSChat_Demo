//
//  ContentView.swift
//  MedicalReach_NativeChat_Demo
//
//  Created by Mikhail on 09.10.2019.
//  Copyright © 2019 Mikhail. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 40.0) {
                Image("cover")
                    .frame(height: 400)

                VStack(alignment: .center, spacing: 20) {
                    Text("Be peace positive!")

                    NavigationLink(destination: MotivationView()) {
                        Text("Click here to know 'HOW?")
                            .fontWeight(.bold)
                            .accentColor(.green)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
