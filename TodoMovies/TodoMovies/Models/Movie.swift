//
//  movie.swift
//  TodoMovies
//
//  Created by victoredbc on 12/01/22.
//

import Foundation

struct PageResults: Codable {
    var page: Int
    var results: [Movie]
}

struct Movie: Identifiable, Codable {
    var id: Int
    var movieName: String
    var movieDate: String
    var movieImagePreview: String
    var movieGenres: [Int]
    
    enum CodingKeys: String, CodingKey {
        case id
        case movieName = "title"
        case movieDate = "release_date"
        case movieImagePreview = "poster_path"
        case movieGenres = "genre_ids"
    }
}
