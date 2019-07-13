//
//  SkillVC.swift
//  App-swoosh
//
//  Created by MISHAL ALHAJRI on 10/11/1440 AH.
//  Copyright © 1440 MISHAL ALHAJRI. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    var player : Player!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(player.desiredLeague!)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func beginnerTouched(_ sender: Any) {
        player.selectedSkill = "Beginner"
    }
    
    @IBAction func ballerSelected(_ sender: Any) {
        player.selectedSkill = "Baller"
    }
    @IBAction func finishTapped(_ sender: Any) {
        performSegue(withIdentifier: "endSegue", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let endVC = segue.destination as? EndVC {
            endVC.player = player
        }
    }
}
