//
//  MovieDetails.swift
//  MoviesApp
//
//  Created by Fatima Garashi on 21/09/2022.
//

import SwiftUI

struct MovieDetails: View {
    let movie : Movie
    
    var body: some View {
        ZStack {
            
            Color.black
                .opacity(0.4)
                .ignoresSafeArea()
                .background(Image(movie.title)
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .blur(radius: 12))
            VStack{
                Image(movie.title)
                    .resizable()
                //                .scaledToFit()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 15)
                
                Text(movie.title)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
//                Image(movie.cast)
//                    .resizable()
                Spacer()
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 15){
                        ForEach(movie.cast){
                            castMember in
                            VStack {
                                Image(castMember.imageName)
                                    .resizable()
                                    .frame(width: 110, height: 150)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                Text(castMember.name)
                            }.foregroundColor(.white)
                        }
                    }
                }
                Spacer()
            }
        }
    }
    
}


struct MovieDetails_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetails(movie: Movie(title: "Interstellar", image: "Interstellar", cast: [CastMember(name: "", imageName: "")]))
    }
}
