//
//  ViewController.swift
//  meus filmes
//
//  Created by César  Ferreira on 17/12/19.
//  Copyright © 2019 César  Ferreira. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var movies: [Movie] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        var movie: Movie
        
        movie = Movie(title: "Title 1", description: "Description 1")
        movies.append( movie )

    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let movie = movies[ indexPath.row ]
        let cell = tableView.dequeueReusableCell(withIdentifier: "item_movie", for: indexPath)
        
        cell.textLabel?.text = movie.title
        
        return cell
    }
    
}

