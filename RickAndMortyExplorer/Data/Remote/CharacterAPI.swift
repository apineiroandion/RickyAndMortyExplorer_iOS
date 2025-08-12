//
//  CharacterA.swift
//  RickAndMortyExplorer
//
//  Created by Anxo on 12/8/25.
//

import Foundation

struct CharacterAPI {
    func getCharacters() async throws -> [Character] {
        let url = URL(string: "https://rickandmortyapi.com/api/character")!
        let (data, _) = try await URLSession.shared.data(from: url)

        struct APIResponse: Decodable {
            let results: [Character]
        }

        let decoded = try JSONDecoder().decode(APIResponse.self, from: data)
        return decoded.results
    }
}
