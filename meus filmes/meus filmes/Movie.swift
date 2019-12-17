//
//  Movie.swift
//  meus filmes
//
//  Created by César  Ferreira on 17/12/19.
//  Copyright © 2019 César  Ferreira. All rights reserved.
//

import UIKit

class Movie {
    
    var title: String!
    var description: String!
    var image: UIImage!
    
    init( title: String, description: String, image: UIImage! ) {
        self.title = title
        self.description = description
        self.image = image
    }
}
