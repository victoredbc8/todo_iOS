//
//  TodoMoviesApp.swift
//  TodoMovies
//
//  Created by victoredbc on 10/01/22.
//

import SwiftUI

@main
struct TodoMoviesApp: App {
    var body: some Scene {
        let viewModel = MoviesScreenViewModel()
        WindowGroup {
            MoviesScreen(moviesListViewModel: viewModel)
        }
    }
}
