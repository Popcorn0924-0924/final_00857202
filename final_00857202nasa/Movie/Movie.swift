//
//  Movie.swift
//  NASA_00857202
//
//  Created by User08 on 2021/1/5.
//

import Foundation
struct Movie: Identifiable, Codable {
    
    var id: String { name }
    
    let name: String
    let description: String
    let imageName: String
    let shortDescription: String
    let sections: [MovieSection]?
}

struct MovieSection: Identifiable, Codable {
    
    var id: String { name }
    
    let name: String
    var picturesImageName: [String]
    
}


extension Movie: Equatable {
    static func == (lhs: Movie, rhs: Movie) -> Bool {
        lhs.id == rhs.id
    }
}

extension Movie {
    
    static var stubbed: [Movie] {
        let url = Bundle.main.url(forResource: "Movie", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        let movie = try! JSONDecoder().decode([Movie].self, from: data)
        return movie
    }
    
    static var stubbedMovie: [Movie] {
        [
            Movie(name: "Interstellar", description: """
                 Earth's future has been riddled by disasters, famines, and droughts. There is only one way to ensure mankind's survival: Interstellar travel. A newly discovered wormhole in the far reaches of our solar system allows a team of astronauts to go where no man has gone before, a planet that may have the right environment to sustain human life. Written by ahmetkozan
            """
                , imageName: "star2", shortDescription: "Director:Christopher Nolan\nWriters: Jonathan Nolan, Christopher Nolan\nStars: Matthew McConaughey, Anne Hathaway, Jessica Chastain", sections: [
                    MovieSection(name: "pic", picturesImageName: ["sjobs1-1", "sjobs1-2", "sjobs1-3", "sjobs1-4"]),
                    
                    
            
            ]),
            Movie(name: "The Martian", description: """
                 Earth's future has been riddled by disasters, famines, and droughts. There is only one way to ensure mankind's survival: Interstellar travel. A newly discovered wormhole in the far reaches of our solar system allows a team of astronauts to go where no man has gone before, a planet that may have the right environment to sustain human life. Written by ahmetkozan
            """
                , imageName: "t2", shortDescription: "Director:Christopher Nolan\nWriters: Jonathan Nolan, Christopher Nolan\nStars: Matthew McConaughey, Anne Hathaway, Jessica Chastain", sections: [
                    MovieSection(name: "pic", picturesImageName: ["sjobs1-1", "sjobs1-2", "sjobs1-3", "sjobs1-4"]),
                    
                    
            
            ])
            
        ]
        
            
    }
    
    
}
