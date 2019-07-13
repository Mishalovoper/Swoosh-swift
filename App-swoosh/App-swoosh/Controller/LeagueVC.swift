//
//  LeagueVC.swift
//  App-swoosh
//
//  Created by MISHAL ALHAJRI on 10/11/1440 AH.
//  Copyright © 1440 MISHAL ALHAJRI. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    @IBOutlet weak var nextButton: customButton!
    var player : Player!
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.isEnabled = false
        // Do any additional setup after loading the view.
        player = Player()
    }
    
    @IBAction func mensTapped(_ sender: Any) {
        leagueType(selectedLeague: "mens")
        
    }
    
    @IBAction func womensTapped(_ sender: Any) {
        leagueType(selectedLeague: "womens")
        
    }
    
    @IBAction func coedTapped(_ sender: Any) {
        leagueType(selectedLeague: "mens")
        
    }
    private func leagueType(selectedLeague : String) {
        player.desiredLeague = selectedLeague
        nextButton.isEnabled = true
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func nextClicked(_ sender: Any) {
        // perform segue programatically
        
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
}
