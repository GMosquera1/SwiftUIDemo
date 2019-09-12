//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Genesis Mosquera on 9/12/19.
//  Copyright © 2019 Genesis Mosquera. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(1...10, id: \.self) { item in
                    NavigationLink(destination: Text("hello Genesis")) {
                        HStack {
                            Image(systemName: "person")
                                .frame(width: 40, height: 40)
                                .foregroundColor(.red)
                                .background(Color.blue)
                                .cornerRadius(20)
                            Text("Item \(item)")
                        }
                    }
                    
                }
            }
        .navigationBarTitle("List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
