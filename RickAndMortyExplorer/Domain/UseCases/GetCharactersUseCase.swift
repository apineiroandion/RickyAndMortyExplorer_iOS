//
//  GetCharactersUseCase.swift
//  RickAndMortyExplorer
//
//  Created by Anxo on 12/8/25.
//

import Foundation

struct GetCharactersUseCase {
    private let repository: CharacterRepositoryProtocol

    init(repository: CharacterRepositoryProtocol = CharacterRepository()) {
        self.repository = repository
    }

    func execute() async throws -> [Character] {
        try await repository.fetchCharacters()
    }
}
