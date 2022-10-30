//
//  PillViewController.swift
//  PillboxApp
//
//  Created by KooK MeeM on 30.10.2022.
//

import UIKit

class PillViewController: UITableViewController {
    private var pillConfig = PillTimerConfiguration.drinkYourPillsNow()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pillConfig.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pillConfig", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let pill = pillConfig[indexPath.row]
        content.text = pill.pillName
        content.secondaryText = pill.description
        cell.contentConfiguration = content
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation
    
    


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as? PillDescriptionViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC?.pill = pillConfig[indexPath.row]

    }
    @IBAction func unwind (for segue: UIStoryboardSegue) {
        guard let settingsVC = segue.source as? PillIncrementationViewController else { return }
        print(settingsVC.Pillname.text, settingsVC.pillDesc.text, settingsVC.pillDosage.text)
        pillConfig.append(PillTimerConfiguration(pillName: settingsVC.Pillname.text ?? "", pillDosage: settingsVC.pillDosage.text ?? "", description: settingsVC.pillDesc.text ?? ""))
        tableView.reloadData()
    }

}
