//
//  Movie.swift
//  User-Movie-Tab
//
//  Created by Sejal on 03/03/23.


import Foundation

struct MovieRoot: Decodable {
    let movieList: [Movie]

    enum CodingKeys: String, CodingKey {
        case movieList = "Movie List"
    }
}

struct Movie: Decodable {
    let title, year, summary: String
    let rating: String
    let moviePoster: String
   

    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case summary = "Summary"
        case rating = "Rating"
        case moviePoster = "Movie Poster"
    
    }
}
