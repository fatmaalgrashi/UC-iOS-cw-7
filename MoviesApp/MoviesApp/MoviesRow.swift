//
//  MoviesRow.swift
//  MoviesApp
//
//  Created by Fatima Garashi on 21/09/2022.
//

import SwiftUI

struct MoviesRow: View {
    let movie : Movie
    var body: some View {
        HStack{
            Image(movie.title)
                .resizable()
//                .scaledToFit()
                .frame(width: 80, height: 90)
                .clipShape(Circle())
            
            Text(movie.title)
                .font(.title3)
        }
    }
}


struct MoviesRow_Previews: PreviewProvider {
    static var previews: some View {
        MoviesRow(movie: Movie(title: "Interstellar", image: "Interstellar", cast: [CastMember(name: "", imageName: "")]))
    }
}
