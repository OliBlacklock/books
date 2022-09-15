//
//  ContentView.swift
//  Books
//
//  Created by Oliver on 14/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //Scroll view
        VStack {
            Text("My library")
                .font(.largeTitle)
                .bold()
            //For each...
            Card()

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
