//
//  UserModelView.swift
//  User-Movie-Tab
//
//  Created by Sejal on 03/03/23.


import Foundation
class UserModelView: GetUsersProtocolAPI {
    var userArray: [User] = []
    var apihelper = ApiHelper()
    var uiUpdateUsersProtocol: UIUpdateUsersProtocol?
    
    init(){
        apihelper.protocolref = self
    }
    
    func fetchUsersData(){
        apihelper.fetchApi(url: "https://dummyjson.com/users", methodOfHttp: "GET", responseType: "Users")
    }
   
    
    func getusers(usersArray: [User]) {
        self.userArray = usersArray
        uiUpdateUsersProtocol?.reloadDataOfUsers()
    }
    
  
//    func populateData() {
//        let user1 = User(firstName: "Sejal", lastName: "Jadhav", age: 28)
//        let user2 = User(firstName: "Akshay", lastName: "Pure", age: 30)
//        let user3 = User(firstName: "Eva", lastName: "Pure", age: 1)
//
//        UserArray.append(user1)
//        UserArray.append(user2)
//        UserArray.append(user3)
//        print(UserArray)
//    }

    
}
