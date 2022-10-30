//
//  PillIncrementationViewController.swift
//  PillboxApp
//
//  Created by KooK MeeM on 30.10.2022.
//

import UIKit

class PillIncrementationViewController: UIViewController {
    
    
    var PillInc : PillTimerConfiguration!

    @IBOutlet var Pillname: UITextField!
    @IBOutlet var pillDosage: UITextField!
    @IBOutlet var pillDesc: UITextField!
    var Pname: String!
    var Pdesc: String!
    var Pdosage: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        Pname = Pillname.text
        Pdosage = pillDosage.text
        Pdesc = pillDesc.text
    }
    
    


}
