//
//  DetailViewController.swift
//  TrackListApp
//
//  Created by aiv on 04.06.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var trackNameLabel: UILabel!
    
    var trackName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: trackName)
        trackNameLabel.text = trackName
        trackNameLabel.numberOfLines = 0
    }

}

