//
//  DetailsView.swift
//  FavouriteBook
//
//  Created by Eda Oner on 21.04.2023.
//

import SwiftUI

struct DetailsView: View {
    
    var chosenFavouriteElement: FavouriteElements

    var body: some View {
        VStack {
            Image(chosenFavouriteElement.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.3)
            Text(chosenFavouriteElement.name)
                .font(.title2)
                .bold()
            Text(chosenFavouriteElement.description)
                .font(.body)
                .padding()
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(chosenFavouriteElement: forrestGump)
    }
}
