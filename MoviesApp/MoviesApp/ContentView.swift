//
//  ContentView.swift
//  MoviesApp
//
//  Created by Fatima Garashi on 21/09/2022.
//

import SwiftUI
struct CastMember : Identifiable{
    let id = UUID()
    let name : String
    let imageName : String
}
struct Movie: Identifiable{
    let id = UUID()
    let title: String
    let image: String
    let cast : [CastMember]
}

struct ContentView: View {
    
    let movies = [Movie(title: "Harry Potter", image: "Harry Potter", cast: [CastMember(name: "Daniel Radcliffe", imageName: "Daniel Radcliffe"), CastMember(name: "Emma Watson", imageName: "Emma Watson"), CastMember(name: "Rupert Grint", imageName: "Rupert Grint"), CastMember(name: "Gary Oldman", imageName: "Gary Oldman"), CastMember(name: "Tom Felton", imageName: "Tom Felton")]),
                  Movie(title: "Interstellar", image: "Interstellar", cast: [ CastMember(name: "Jessica Chastain", imageName: "Jessica Chastain"), CastMember(name: "Anne Hathaway", imageName: "Anne Hathaway"), CastMember(name: "Timothée Chalamet", imageName: "Timothée Chalamet"), CastMember(name: "Matt Damon", imageName: "Matt Damon"), CastMember(name: "Matthew McConaughey", imageName: "Matthew McConaughey")]),
                  Movie(title: "The Dark Knight", image:  "The Dark Knight", cast: [CastMember(name: "Christian Bale", imageName: "Christian Bale"), CastMember(name: "Heath Ledger", imageName: "Heath Ledger"), CastMember(name: "Morgan Freeman", imageName: "Morgan Freeman"), CastMember(name: "Gary Oldman", imageName: "Gary Oldman"), CastMember(name: "Cillian Murphy", imageName: "Cillian Murphy")])]
    var body: some View {
        NavigationView{
            List{
                ForEach(movies){ movie in
                    NavigationLink(destination: MovieDetails(movie: movie)){
                        HStack{
                            MoviesRow(movie : movie)
                        }
                    }.navigationTitle("Movies")
                     .listStyle(.grouped)
                    
                }
                
            }
//            List(movies){ movie in
////                NavigationLink(destination: MovieDetails(movie: Movie(title: "", image: ""), label: {
////
////                    MoviesRow(movie: movie)
////
////                })
//
//            }.navigationTitle("Movies")
//                .listStyle(.grouped)
            
        }.accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct MovieListItem : View{
//    let movie : MovieDetails
//
//    var body: some View{
//        HStack
//    }
//}

