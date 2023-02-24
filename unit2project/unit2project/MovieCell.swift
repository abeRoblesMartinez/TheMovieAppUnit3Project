//
//  MovieCell.swift
//  unit2project
//
//  Created by Abraham on 2/16/23.
//

import UIKit
import Nuke


class MovieCell: UITableViewCell {
    
    
    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    
    @IBOutlet weak var movieSynopsisLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    /// Configures the cell's UI for the given track.
    func configure(with movie: Movie) {
        movieTitleLabel.text = movie.title
        movieSynopsisLabel.text = movie.overview

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: URL(string:"https://image.tmdb.org/t/p/w500\(movie.poster_path)")!, into: movieImageView)
    }

}
