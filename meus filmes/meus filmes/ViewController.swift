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

        setupMovies()

    }
    
    private func setupMovies() {
        
        var movie: Movie
        
        movie = Movie( title: "007 - Spectre", description: "Description 1", image: UIImage.init(named: "filme1"))
        movies.append( movie )
        
        movie = Movie( title: "Star Wars", description: "Description 2", image: UIImage.init(named: "filme2"))
        movies.append( movie )
        
        movie = Movie( title: "Impacto Mortal", description: "Description 3", image: UIImage.init(named: "filme3"))
        movies.append( movie )
        
        movie = Movie( title: "Deadpool", description: "Description 4", image: UIImage.init(named: "filme4"))
        movies.append( movie )
        
        movie = Movie( title: "O Resgate", description: "Description 5", image: UIImage.init(named: "filme5"))
        movies.append( movie )
        
        movie = Movie( title: "A Herdeira", description: "Description 6", image: UIImage.init(named: "filme6"))
        movies.append( movie )
        
        movie = Movie( title: "Caçadores de Emoção", description: "Description 7", image: UIImage.init(named: "filme7"))
        movies.append( movie )
        
        movie = Movie( title: "Regresso do mal", description: "Description 8", image: UIImage.init(named: "filme8"))
        movies.append( movie )
        
        movie = Movie( title: "Tarzan", description: "Description 9", image: UIImage.init(named: "filme9"))
        movies.append( movie )
        
        movie = Movie( title: "Hardcore", description: "Description 10", image: UIImage.init(named: "filme10"))
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
        cell.imageView?.image = movie.image
        
        return cell
    }
    
}

