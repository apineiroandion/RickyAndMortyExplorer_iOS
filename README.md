# Rick & Morty Explorer 👽🚀

![Swift](https://img.shields.io/badge/Swift-5.9-orange)
![iOS](https://img.shields.io/badge/iOS-16%2B-blue)
![SwiftUI](https://img.shields.io/badge/SwiftUI-Enabled-green)
![MVVM](https://img.shields.io/badge/Architecture-MVVM%20%2B%20Clean-lightgrey)

## 📌 Descripción

**Rick & Morty Explorer** es una aplicación iOS desarrollada como proyecto formativo con el objetivo de **practicar Swift, SwiftUI y la arquitectura MVVM**.  
Utiliza la **API pública de [Rick and Morty](https://rickandmortyapi.com/)** para mostrar personajes con sus imágenes e información básica, siguiendo una arquitectura limpia que separa las responsabilidades en diferentes capas.

> Aunque se trata de un proyecto de práctica, está estructurado siguiendo buenas prácticas de desarrollo profesional para que sea fácilmente escalable, mantenible y testeable.

---

## 🎯 Objetivos del proyecto

- Practicar **Swift** y **SwiftUI** con un caso real.
- Implementar **arquitectura MVVM** combinada con principios de **Clean Architecture**.
- Consumir datos desde una **API pública** utilizando `async/await`.
- Gestionar estados y errores de forma reactiva con `ObservableObject` y `@Published`.
- Presentar un proyecto ordenado y documentado, orientado a un entorno profesional.

---

## 🏛 Arquitectura

El proyecto sigue **MVVM + Clean Architecture**, con separación clara en:

```plaintext
RickAndMortyExplorer/
│
├── Presentation/ # Vistas y ViewModels (SwiftUI)
├── Domain/ # Entidades y casos de uso (lógica de negocio)
├── Data/ # Repositorios y acceso a datos (API, almacenamiento local)
```

**Flujo de datos:**
1. La **Vista (View)** solicita datos al **ViewModel**.
2. El **ViewModel** ejecuta un **Use Case**.
3. El **Use Case** llama al **Repository**.
4. El **Repository** obtiene los datos desde la API y los devuelve.
5. El **ViewModel** publica los datos y la **Vista** se actualiza automáticamente.

---

## 🖥️ Tecnologías utilizadas

- **Lenguaje:** Swift 5.9
- **Framework UI:** SwiftUI
- **Arquitectura:** MVVM + Clean Architecture
- **Networking:** `URLSession` con `async/await`
- **Manejo de estado:** `@StateObject`, `@Published`, `ObservableObject`
- **Compatibilidad:** iOS 16 o superior

---

## 📡 API utilizada

Se utiliza la API oficial y gratuita de Rick & Morty:

- **URL base:** `https://rickandmortyapi.com/api`
- **Endpoint principal:** `/character`  
  Devuelve información como:
  ```json
  {
    "id": 1,
    "name": "Rick Sanchez",
    "status": "Alive",
    "species": "Human",
    "image": "https://rickandmortyapi.com/api/character/avatar/1.jpeg"
  }

## 📱 Funcionalidades implementadas

### Pantalla de listado
- Nombre, especie e imagen de cada personaje.
- Carga asíncrona con indicador de progreso.
- Manejo de errores con mensajes amigables.

### Pantalla de detalle
- Imagen a tamaño grande.
- Información adicional sobre el personaje.
- Navegación fluida con `NavigationView` y `NavigationLink`.

```plaintext
RickAndMortyExplorer/
│
├── Presentation/              # Capa de presentación (UI y lógica de presentación)
│   ├── Views/                  # Vistas SwiftUI
│   │   ├── CharacterListView.swift
│   │   └── CharacterDetailView.swift
│   ├── ViewModels/             # ViewModels (ObservableObject)
│   │   ├── CharacterListViewModel.swift
│   │   └── CharacterDetailViewModel.swift
│   └── Components/             # Componentes reutilizables de UI
│       └── CharacterRow.swift
│
├── Domain/                     # Capa de dominio (lógica de negocio pura)
│   ├── Entities/               # Modelos de negocio
│   │   └── Character.swift
│   ├── UseCases/                # Casos de uso
│       ├── GetAllCharactersUseCase.swift
│       └── GetCharacterDetailUseCase.swift
│
├── Data/                       # Capa de datos (acceso a API o base de datos local)
│   ├── Models/                  # Modelos de datos (DTOs)
│   │   └── CharacterDTO.swift
│   ├── Repositories/            # Implementaciones de repositorios
│   │   └── CharacterRepositoryImpl.swift
│   ├── Mappers/                 # Transformadores DTO <-> Entidad
│   │   └── CharacterMapper.swift
│   └── Network/                 # Cliente HTTP y configuración de API
│       ├── APIClient.swift
│       └── Endpoints.swift
│
└── RickAndMortyExplorerApp.swift # Punto de entrada principal

```
## 🧠 Aprendizajes clave

Durante el desarrollo de este proyecto se practicaron:

- Diseño de arquitectura escalable.
- Consumo de APIs con `async/await`.
- Uso de `ObservableObject` y manejo de estados en SwiftUI.
- Separación de responsabilidades entre capas.
- Creación de documentación y estructura de código presentable.

---

## 📌 Posibles mejoras futuras

- Paginación para cargar más personajes.
- Filtros por estado o especie.
- Caché de imágenes para mejorar rendimiento.
- Test unitarios de ViewModels y Use Cases.

---

## 📄 Licencia

Este proyecto se distribuye bajo la licencia **MIT**.  
Puedes usarlo y modificarlo libremente para fines educativos o personales.

---

## 💡 Nota personal

Este proyecto es parte de mi portafolio como desarrollador iOS, enfocado en mostrar mis habilidades con **Swift**, **SwiftUI** y arquitectura de software limpia.  
Mi objetivo es crecer profesionalmente y aportar valor en entornos donde la calidad del código y la escalabilidad sean prioridades.

