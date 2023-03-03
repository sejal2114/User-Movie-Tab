//
//  UserDetailsViewController.swift
//  User-Movie-Tab
//
//  Created by Sejal on 04/03/23.
//

import Foundation
import UIKit

class UserDetailsViewController: UIViewController {
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastName: UILabel!
    @IBOutlet weak var age: UILabel!

    var user: User?
    
    override func viewDidLoad() {
        if let selectedUser = user {
            nameLabel.text = selectedUser.firstName
            lastName.text = selectedUser.lastName
            age.text = "Age: \(selectedUser.age)"
        }
    }
    
    @IBAction func showAlertPopup(_ sender: Any) {
        // create the alert
              let alert = UIAlertController(title: "Alert title", message: "Alert message?", preferredStyle: UIAlertController.Style.alert)

              // add the actions (buttons)
              alert.addAction(UIAlertAction(title: "button 1", style: UIAlertAction.Style.default, handler: nil))
              alert.addAction(UIAlertAction(title: "button 2", style: UIAlertAction.Style.cancel, handler: nil))
              alert.addAction(UIAlertAction(title: "button 3", style: UIAlertAction.Style.default, handler: { action in

                  // do something like...
                  self.singleButtonAlert()
                  
                }))
              // show the alert
              self.present(alert, animated: true, completion: nil)
    }
    
    func singleButtonAlert(){
        let alert = UIAlertController(title: "Alert title", message: "Alert message?", preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}
