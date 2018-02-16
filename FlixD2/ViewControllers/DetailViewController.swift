//
//  DetailViewController.swift
//  FlixD2
//
//  Created by Dami Roberts on 2/13/18.
//  Copyright © 2018 Dami Roberts. All rights reserved.
//

import UIKit

enum MovieKeys {
    static let title = "title"
    static let backDrop = "backdrop_path"
    static let poster = "poster_path"
    static let releasedate = "release_date"
    static let overiview = "overview"
}
class DetailViewController: UIViewController {

    
    @IBOutlet weak var backDrop: UIImageView!
    @IBOutlet weak var poster: UIImageView!
    @IBOutlet weak var titlelabel: UILabel!
    @IBOutlet weak var releasedate: UILabel!
    @IBOutlet weak var Overview: UILabel!
    
    
    var movie: [String: Any]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let movie = movie {
          
            titlelabel.text = movie[MovieKeys.title] as? String
            releasedate.text = movie[MovieKeys.releasedate] as? String
            Overview.text = movie[MovieKeys.overiview] as? String
            let backdropString = movie[MovieKeys.backDrop] as! String
            let posterString = movie[MovieKeys.poster] as! String
            let baseURLString = "https://image.tmdb.org/t/p/w500"
            let posterURL = URL(string: baseURLString + posterString)!
            poster.af_setImage(withURL: posterURL)
            
            let backdropURL = URL(string: baseURLString + backdropString)!
            backDrop.af_setImage(withURL: backdropURL)
        }
        
        
   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
