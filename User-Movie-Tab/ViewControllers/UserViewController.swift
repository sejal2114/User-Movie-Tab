//
//  UserViewController.swift
//  User-Movie-Tab
//
//  Created by Sejal on 03/03/23.
//

import UIKit

class UserViewController: UIViewController{

    var userModelView = UserModelView()
    
    @IBOutlet weak var UserTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userModelView.uiUpdateUsersProtocol = self
//           userModelView.populateData()
        userModelView.fetchUsersData()
           registerXib()
           setTableDelegate()
    }
    
    func setTableDelegate(){
        UserTableView.delegate = self
        UserTableView.dataSource = self
    }
    func registerXib() {
        let nib = UINib(nibName: "UserTableViewCell", bundle: nil)
        UserTableView.register(nib, forCellReuseIdentifier: "UserTableViewCell")
    }
}

extension UserViewController: UITableViewDelegate, UITableViewDataSource {
       
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          userModelView.userArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserTableViewCell", for:    indexPath) as! UserTableViewCell
        
        let user = userModelView.userArray[indexPath.row]
        cell.nameLabel.text = user.firstName
        cell.lastNameLabel.text = user.lastName
        cell.age.text = "\(user.age)"
        return cell
    }
   
}

extension UserViewController: UIUpdateUsersProtocol {
    func reloadDataOfUsers() {
        DispatchQueue.main.async {
            self.UserTableView.reloadData()
        }
    }
}
