//
//  MovieDetailsViewController.swift
//  Flix
//
//  Created by Vishisht  Jain on 1/25/20.
//  Copyright © 2020 Vishisht  Jain. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {

    var movie: [String:Any]!
    
    @IBOutlet weak var movieLongPanel: UIImageView!
    
    @IBOutlet weak var moviePoster: UIImageView!
    
    @IBOutlet weak var MovieTitle: UILabel!
    
    @IBOutlet weak var movieDesc:
        UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        MovieTitle.text = movie["title"] as? String
        movieDesc.text = movie["overview"] as? String
        movieDesc.sizeToFit()
        
        let smallPosterURL = "https://image.tmdb.org/t/p/w185"
        
        let posterImage = movie["poster_path"] as! String
        
        let posterURL = URL(string: smallPosterURL + posterImage)
        
        moviePoster.af_setImage(withURL: posterURL!)
        
        let backdropImage = movie["backdrop_path"] as! String
        
        let backdropURL = URL(string: "https://image.tmdb.org/t/p/w780" + backdropImage)
        
        movieLongPanel.af_setImage(withURL: backdropURL!)
        
        moviePoster.af_setImage(withURL: posterURL!)
        
        
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
