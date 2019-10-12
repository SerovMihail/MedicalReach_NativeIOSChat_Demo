//
//  ContentView.swift
//  MedicalReach_NativeChat_Demo
//
//  Created by Mikhail on 09.10.2019.
//  Copyright © 2019 Mikhail. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var items: [String] = ["1", "2", "3", "4"]
    
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .center) {
                    ZStack(alignment: .bottom) {
                        Image("foggy-forest")
                            .resizable()
                            .scaledToFill()
                            .aspectRatio(contentMode: .fill)
                            .cornerRadius(30)
                            .gesture(DragGesture().onEnded { value in
                                print(value)
                            })
                            .shadow(radius: 50)
                        
                        HStack(alignment: .bottom) {
                            Text("Extend your mind")
                                .font(.largeTitle)
                                .fontWeight(.black)
                                .foregroundColor(Color.white)
                            
                        }.padding(30)
                    }
                    
                    List {
                        ForEach(self.items, id: \.self) { movie in
                            Text(movie)
                        }
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
