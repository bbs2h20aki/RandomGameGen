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
        versuche(zahl: z)
    }
    
    func showalert(message: String) {
        let alert = UIAlertController(title: "game over", message: message, preferredStyle: .alert)
        
        let action1 = UIAlertAction(title: "ok", style: .default, handler: {(action) in })
        let action2 = UIAlertAction(title: "erneut versuchen", style: .default, handler: {(action) in })
        
        
        alert.addAction(action1)
        alert.addAction(action2)
        
        self.present(alert, animated: true,completion: nil)
        
    }
    
    
    func versuche(zahl: Int){
        switch z {
        case 1:
            versuch.text = "noch 2 versuche übrig"
        case 2:
            versuch.text = "noch 1 versuche übrig"
        case 3:
            versuch.text = "keine versuche übrig"
            shufflebutton.isEnabled = false
            shufflebutton.alpha = 0.5
            
        default:
            versuch.text = "du noob"
        }
    }
        
    func resetView(){
     z = 0
        versuch.text = "noch 3 versuche"
        gamelabel.text = ""
        shufflebutton.alpha = 1
        shufflebutton.isEnabled = true
        imageview.image = #imageLiteral(resourceName: "default-image")
        
    }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
}

