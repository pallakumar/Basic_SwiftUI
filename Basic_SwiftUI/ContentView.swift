//
//  ContentView.swift
//  Basic_SwiftUI
//
//  Created by apple on 01/07/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var mobileNo: String = "9663959054"
    @State private var isOn = false
    
    var body: some View {
        NavigationView {
            VStack {
                // Text("Welcome to Home View")
                //.font(.title)
                //.padding()
                ScrollView {
                    VStack(spacing:15) {
                        NavigationLink(destination: DetailView()) {
                            Text("Go to Detail View")
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        //.navigationTitle("Home")
                        TextField("dsds", text: $name)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        TextField("Enter your mobile no", text: $mobileNo)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        
                        Text("Hello, \(name)!")
                        
                        Button(action: {
                            print("Clicked Btn")
                        }) {
                            Text("vstack Me")
                                .padding()
                                .background(Color.green)
                                .cornerRadius(8)
                                .foregroundColor(.white)
                        }
                    }
                    
                    HStack {
                        Text("kumar")
                            .padding()
                            .foregroundColor(.red)
                            .font(.title)
                    }
                    .padding()
                    .background(.cyan)
                    .padding()
                    .background(.red)
                    
                    Button(action: {
                        print("Clicked Btn")
                    }) {
                        Text("taped Me")
                            .padding()
                            .background(Color.green)
                            .cornerRadius(8)
                            .foregroundColor(.white)
                    }
                    
                    Button(action: {
                        print("cleicked button2")
                    }) {
                        Text("button2")
                            .foregroundColor(.gray)
                            .background(Color.red)
                    }
                    
                    Button(action: {
                        print("clicked butotn3")
                    }) {
                        Text("button3")
                            .padding()
                            .background(Color.red)
                    }
                    
                    VStack {
                        Toggle(isOn: $isOn) {
                            Text("Enable Feature")
                        }
                        .padding()
                        
                        Text(isOn ? "Enabled" : "Disabled")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
