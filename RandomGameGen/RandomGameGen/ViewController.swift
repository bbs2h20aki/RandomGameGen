//
//  ViewController.swift
//  RandomGameGen
//
//  Created by Fabian Kirchmann / BBS2H20A on 06.09.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var gamelabel: UILabel!
    @IBOutlet weak var shufflebutton: UIButton!
    
    
    let images: [UIImage] = [#imageLiteral(resourceName: "modernWarfare"),#imageLiteral(resourceName: "rocketLeague"),#imageLiteral(resourceName: "csGO"),#imageLiteral(resourceName: "overwatch"),#imageLiteral(resourceName: "fortnite"),#imageLiteral(resourceName: "minecraft"),#imageLiteral(resourceName: "gta5"),#imageLiteral(resourceName: "valorant"),#imageLiteral(resourceName: "rocketLeague"),#imageLiteral(resourceName: "leagueOfLegends"),#imageLiteral(resourceName: "apex")]
    
    @IBAction func shufflebuttonaction(_ sender: UIButton) {
        imageview.image = images.randomElement()
    }
}

