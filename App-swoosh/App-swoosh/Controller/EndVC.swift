//
//  EndVC.swift
//  App-swoosh
//
//  Created by MISHAL ALHAJRI on 10/11/1440 AH.
//  Copyright © 1440 MISHAL ALHAJRI. All rights reserved.
//

import UIKit

class EndVC: UIViewController {

    @IBOutlet weak var skillLabel: UILabel!
    @IBOutlet weak var desiredLabel: UILabel!
    var player : Player!
    override func viewDidLoad() {
        super.viewDidLoad()
        skillLabel.text = skillLabel.text! + " " + player.selectedSkill!
        desiredLabel.text = desiredLabel.text! + " " + player.desiredLeague!
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

}
