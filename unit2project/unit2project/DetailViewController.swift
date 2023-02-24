//
//  DetailViewController.swift
//  unit2project
//
//  Created by Abraham on 2/16/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var voteLabel: UILabel!

    @IBOutlet weak var voteCountLabel: UILabel!
    
    @IBOutlet weak var popularityLabel: UILabel!
    
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.

        Nuke.loadImage(with: URL(string:"https://image.tmdb.org/t/p/w500\(movie.poster_path)")!, into: movieImageView)
        titleLabel.text = movie.title
        voteCountLabel.text = String(format: "%d", movie.vote_count) + " Vote Count"
        voteLabel.text = String(format: "%.2f", movie.vote_average) + " Vote Average"
        popularityLabel.text = "Popularity " + String(format: "%.2f", movie.popularity)
        synopsisLabel.text = movie.overview
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
