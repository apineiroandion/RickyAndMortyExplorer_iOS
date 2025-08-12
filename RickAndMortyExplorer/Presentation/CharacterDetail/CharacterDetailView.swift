//
//  Untitled.swift
//  RickAndMortyExplorer
//
//  Created by Anxo on 12/8/25.
//

import SwiftUI

struct CharacterDetailView: View {
    let character: Character

    var body: some View {
        VStack {
            AsyncImage(url: URL(string: character.image)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .padding()

            Text(character.name).font(.largeTitle).padding(.bottom, 5)
            Text(character.species).font(.title2)
            Text("Estado: \(character.status)").padding(.top, 10)

            Spacer()
        }
        .navigationTitle("Detalle")
    }
}
