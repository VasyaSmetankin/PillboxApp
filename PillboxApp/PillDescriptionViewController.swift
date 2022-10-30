//
//  PillDescriptionViewController.swift
//  PillboxApp
//
//  Created by KooK MeeM on 30.10.2022.
//

import UIKit

class PillDescriptionViewController: UIViewController {
    
    
    @IBOutlet var pillDosage: UILabel!
    @IBOutlet var pillName: UILabel!
    @IBOutlet var pillDesc: UILabel!
    
    var pill: PillTimerConfiguration!

    override func viewDidLoad() {
        super.viewDidLoad()
        pillName.text = pill.pillName
        pillDesc.text = pill.description
        pillDosage.text = pill.pillDosage
        
        

        
        
    }


}
