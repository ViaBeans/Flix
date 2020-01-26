//
//  MovieCell.swift
//  Flix
//
//  Created by Vishisht  Jain on 1/23/20.
//  Copyright © 2020 Vishisht  Jain. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var MovieTitle: UILabel!
    @IBOutlet weak var MovieDesc: UILabel!
    @IBOutlet weak var MoviePoster: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
