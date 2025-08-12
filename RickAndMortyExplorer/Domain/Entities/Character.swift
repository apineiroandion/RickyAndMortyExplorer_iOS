//
//  Untitled.swift
//  RickAndMortyExplorer
//
//  Created by Anxo on 12/8/25.
//

// Importa el framework Foundation, que es necesario para funcionalidades como Decodable.
// Define una estructura llamada Character.
// Es un tipo de dato que agrupa propiedades para un personaje.
// El protocolo Identifiable permite que las vistas de SwiftUI identifiquen de forma única cada objeto.
// El protocolo Decodable permite que un objeto JSON (u otro formato de datos) se convierta automáticamente
// en una instancia de esta estructura.
import Foundation

struct Character: Identifiable, Decodable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let image: String
}
