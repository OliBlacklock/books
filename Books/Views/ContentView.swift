//
//  ContentView.swift
//  Books
//
//  Created by Oliver on 14/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = BookModel()
    
    var body: some View {
        
        //Scroll view
        VStack {
            Text("My library")
                .font(.largeTitle)
                .bold()
            
            //Cards
            GeometryReader { geo in
                
                ZStack {
                    //Rectangle background
                    Rectangle()
                        .frame(width: geo.size.width, height: geo.size.height/7*6)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                    
                    //Card contents
                    VStack (alignment: .leading) {
                        
                        //Title/author/star
                        VStack (alignment: .leading) {
                            HStack {
                                Text("Title")
                                    .font(.title)
                                    .bold()
                                Spacer()
                                
                                Image(systemName: "star.fill")
                            }
                            .padding(.trailing)
                            
                            Text("Author")
                                .font(.title3)
                        }
                        .padding(.leading)
                        .padding(.top,30)
                        
                        //Cover image
                        Image("cover1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                    }
                }
            }
            .padding()

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// if model.recipes[index].featured == true {

//ForEach(model.recipes) { r in

