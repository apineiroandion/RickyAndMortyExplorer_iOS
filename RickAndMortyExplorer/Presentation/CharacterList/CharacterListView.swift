//
//  CharacterListView.swift
//  RickAndMortyExplorer
//
//  Created by Anxo on 12/8/25.
//

import SwiftUI

struct CharacterListView: View {
    @StateObject private var viewModel = CharacterListViewModel()

    var body: some View {
        NavigationView {
            Group {
                if viewModel.isLoading {
                    ProgressView("Cargando personajes...")
                } else if let error = viewModel.errorMessage {
                    Text(error).foregroundColor(.red)
                } else {
                    List(viewModel.characters) { character in
                        NavigationLink(destination: CharacterDetailView(character: character)) {
                            HStack {
                                AsyncImage(url: URL(string: character.image)) { image in
                                    image.resizable()
                                } placeholder: {
                                    ProgressView()
                                }
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())

                                VStack(alignment: .leading) {
                                    Text(character.name).font(.headline)
                                    Text(character.species).font(.subheadline)
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Rick & Morty")
        }
        .onAppear {
            viewModel.loadCharacters()
        }
    }
}
