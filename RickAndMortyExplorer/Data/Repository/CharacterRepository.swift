//
//  CharacterRepository.swift
//  RickAndMortyExplorer
//
//  Created by Anxo on 12/8/25.
//

import Foundation

protocol CharacterRepositoryProtocol {
    func fetchCharacters() async throws -> [Character]
}

class CharacterRepository: CharacterRepositoryProtocol {
    private let api = CharacterAPI()

    func fetchCharacters() async throws -> [Character] {
        try await api.getCharacters()
    }
}
