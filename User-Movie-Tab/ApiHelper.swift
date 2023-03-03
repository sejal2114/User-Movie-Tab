//
//  ApiHelper.swift
//  User-Movie-Tab
//
//  Created by Sejal on 03/03/23.
//

import Foundation
class ApiHelper{
    var userArray : [User] = []
    var movieArray : [Movie] = []
    
    var protocolref : GetUsersProtocolAPI?   
    // users, movies
    func fetchApi(url:String, methodOfHttp:String, responseType: String){
        //Create a URL object
        guard let url = URL(string: url) else {
            return
        }
        // create a URLRequest object and pass it to the dataTask(with:) method.
        var request = URLRequest(url: url)
        request.httpMethod = methodOfHttp
        //create object of urlsession
        let urlSession = URLSession(configuration: .default)
        
        let dataTask = urlSession.dataTask(with: request) { data, response, error in
            guard let responseData = data else {
                return
            }
            
            if responseType == "Users" {
                self.parseUsersData(responseData: responseData)
            } else if responseType == "Movies" {
                self.parseMoviesData(responseData: responseData)
            }
        }
        dataTask.resume()
    }
    
   private func parseUsersData(responseData: Data){
        let decoder = JSONDecoder()
        let root:Roots = try!decoder.decode(Roots.self, from: responseData)
        
        self.userArray = root.users
       protocolref?.getusers(usersArray: self.userArray)
       // self.protocolProductData?.reloadView()
        
    }
    
    private func parseMoviesData(responseData: Data){
        let decoder = JSONDecoder()
        let root:MovieRoot = try!decoder.decode(MovieRoot.self, from: responseData)
        
        self.movieArray = root.movieList
    }
    
}

