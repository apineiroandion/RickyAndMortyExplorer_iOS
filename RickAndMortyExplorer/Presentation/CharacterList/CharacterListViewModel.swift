//
//  CharacterListViewModel.swift
//  RickAndMortyExplorer
//
//  Created by Anxo on 12/8/25.
//

import Foundation

@MainActor
class CharacterListViewModel: ObservableObject {
    @Published var characters: [Character] = []
    @Published var isLoading = false
    @Published var errorMessage: String?

    private let getCharactersUseCase = GetCharactersUseCase()

    func loadCharacters() {
        isLoading = true
        Task {
            do {
                let result = try await getCharactersUseCase.execute()
                characters = result
                isLoading = false
            } catch {
                errorMessage = "Error al cargar personajes"
                isLoading = false
            }
        }
    }
}
