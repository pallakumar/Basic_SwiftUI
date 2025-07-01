//
//  DetailView.swift
//  Basic_SwiftUI
//
//  Created by apple on 01/07/25.
//
import SwiftUI

struct DetailView: View {
    var fruits = ["apple,Mango,Pine Apple", "Orange"]

    var body: some View {
//        Text("This is the Detail View")
//            .font(.headline)
//            .padding()
        
        List(fruits, id: \.self) { fruit in
            Text(fruit)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
