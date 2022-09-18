//
//  Card.swift
//  Books
//
//  Created by Oliver on 14/09/2022.
//

import SwiftUI

struct Card: View {
    
    @ObservedObject var model = BookModel()
    
    var body: some View {
        
      //ForEach(model.books) { b in

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
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
    }
}
