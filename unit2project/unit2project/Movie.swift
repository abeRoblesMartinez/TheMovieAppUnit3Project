//
//  Movie.swift
//  unit2project
//
//  Created by Abraham on 2/9/23.
//

import Foundation
//
//struct Dates {
//    let maximum: Date
//    let minimum: Date
//}

struct MovieResponse: Decodable {
    let results: [Movie]
}

struct Movie: Decodable {
    let title: String
    let overview: String
    let poster_path: URL
    let vote_average: Double
    let vote_count: Int
    let popularity: Double
}
