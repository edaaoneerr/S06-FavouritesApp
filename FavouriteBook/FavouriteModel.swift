//
//  FavouriteModel.swift
//  FavouriteBook
//
//  Created by Eda Oner on 21.04.2023.
//

import Foundation


struct FavouriteModel: Identifiable {
    
    var id = UUID()
    var title: String
    var elements: [FavouriteElements]
    
    
    
    
}

struct FavouriteElements: Identifiable {
    var id = UUID()
    var name: String
    var imageName: String
    var description: String
}

//Bands

let metallica = FavouriteElements(name: "Metallica", imageName: "metallica", description: "No 1 Music Band")
let megadeth = FavouriteElements(name: "Megadeth", imageName: "megadeth", description: "No 2 Music Band")
let ironMaiden = FavouriteElements(name: "Iron Maiden", imageName: "ironmaiden", description: "No 3 Music Band")

let favouriteBands = FavouriteModel(title: "Favourite Bands", elements: [metallica, megadeth, ironMaiden])


//Movies


let interstellar = FavouriteElements(name: "Interstellar", imageName: "interstellar", description: "No 1 Movie")

let forrestGump = FavouriteElements(name: "Forrest Gump", imageName: "forrestgump", description: "No 2 Movie")

let pulpFiction = FavouriteElements(name: "Pulp Fiction", imageName: "pulpfiction", description: "No 3  Movie")

let favouriteMovies = FavouriteModel(title: "Favourite Movies", elements: [interstellar, forrestGump, pulpFiction])


let myFavourites = [favouriteBands, favouriteMovies]
