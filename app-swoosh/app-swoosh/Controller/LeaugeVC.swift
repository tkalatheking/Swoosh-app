//
//  LeaugeVC.swift
//  app-swoosh
//
//  Created by Marco Tkalcic on 8/31/18.
//  Copyright © 2018 Marco Tkalcic. All rights reserved.
//

import UIKit

class LeaugeVC: UIViewController {
   
    var player: Player!
    
    @IBOutlet weak var NextBtn: BorderButton!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()
    }
    
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSeque", sender: self)
    }
    
    @IBAction func onMensPress(_ sender: Any) {
        selectLeague(leagueType: "men")
    }
    
    @IBAction func onWomensPress(_ sender: Any) {
        selectLeague(leagueType: "women")
    }
  
    @IBAction func onCoedPress(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
   
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        NextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }

}
