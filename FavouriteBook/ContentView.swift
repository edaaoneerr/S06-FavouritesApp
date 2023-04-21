//
//  ContentView.swift
//  FavouriteBook
//
//  Created by Eda Oner on 21.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(myFavourites) {
                    favourite in
                    Section(header: Text(favourite.title)) {
                        ForEach(favourite.elements){ element in
                            NavigationLink(destination: DetailsView(chosenFavouriteElement: element)) {
                             Text(element.name)
                            }
                        }
                    }
                }
            }.navigationTitle("Favourites App")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
