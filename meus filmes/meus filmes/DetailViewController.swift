//
//  DetailViewController.swift
//  meus filmes
//
//  Created by César  Ferreira on 18/12/19.
//  Copyright © 2019 César  Ferreira. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var movie: Movie!

    @IBOutlet weak var movieDetailImage: UIImageView!
    @IBOutlet weak var movieDetailTitle: UILabel!
    @IBOutlet weak var movieDetailDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        movieDetailImage.image = movie.image
        movieDetailTitle.text = movie.title
        movieDetailDescription.text = movie.description

    }
}
