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
    var z = 0
    
    @IBOutlet weak var versuch: UILabel!
    let images: [UIImage] = [#imageLiteral(resourceName: "modernWarfare"),#imageLiteral(resourceName: "rocketLeague"),#imageLiteral(resourceName: "csGO"),#imageLiteral(resourceName: "overwatch"),#imageLiteral(resourceName: "fortnite"),#imageLiteral(resourceName: "minecraft"),#imageLiteral(resourceName: "gta5"),#imageLiteral(resourceName: "valorant"),#imageLiteral(resourceName: "rocketLeague"),#imageLiteral(resourceName: "leagueOfLegends"),#imageLiteral(resourceName: "apex")]
    
    @IBAction func shufflebuttonaction(_ sender: UIButton) {
        z+=1
        imageview.image = images.randomElement()
        versuch.text = "noch "+String(3-z)+" versuche übrig"
    
        let currentimage = imageview.image
        switch currentimage {
        case #imageLiteral(resourceName: "fortnite"):
            gamelabel.text = "Fortnite"
        case #imageLiteral(resourceName: "modernWarfare") :
            gamelabel.text = "Call of Duty Modern Warefare"
        case #imageLiteral(resourceName: "leagueOfLegends"):
            gamelabel.text = "League of Legends"
        case #imageLiteral(resourceName: "rocketLeague"):
            gamelabel.text = "Rocket League"
        case #imageLiteral(resourceName: "overwatch"):
            gamelabel.text = "Overwatch"
        case #imageLiteral(resourceName: "gta5"):
            gamelabel.text = "GTA V"
        case #imageLiteral(resourceName: "csGO"):
            gamelabel.text = "CS:GO"
        case #imageLiteral(resourceName: "apex"):
            gamelabel.text = "Apex Legends"
        case #imageLiteral(resourceName: "minecraft"):
            gamelabel.text = "Minecraft"
        case #imageLiteral(resourceName: "valorant"):
            gamelabel.text = "Valorant"
        default:
            gamelabel.text = ""
        }
    }
    
}

