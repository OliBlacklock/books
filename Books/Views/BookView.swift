//
//  BookView.swift
//  Books
//
//  Created by Oliver on 18/09/2022.
//

import SwiftUI

struct BookView: View {
    
    @State var selectedIndex = 1

    var body: some View {
        
        NavigationView {
            
            VStack {
                Text("Read now")
                    .font(.title)
                
                GeometryReader { geo in
                    Image("cover1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: geo.size.width, height: geo.size.height/7*6)
                }
                
                Text("Save for later")
                
                Image(systemName: "star.fill")
                
                Text("Rate Text & more")
                
                Picker("Rating", selection: $selectedIndex) {
                    Text("1").tag(1)
                    Text("2").tag(2)
                    Text("3").tag(3)
                    Text("4").tag(4)
                    Text("5").tag(5)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
            }
            .navigationBarTitle("Text & more")
        }
    }
}

struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        BookView()
    }
}
