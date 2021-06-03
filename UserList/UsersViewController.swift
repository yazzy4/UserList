//
//  UsersViewController.swift
//  UserList
//
//  Created by Yaz Burrell on 6/3/21.
//

import UIKit

class UsersViewController: UITableViewController {
    
    let tempUsers = ["Larry", "David", "Jessica", "Joanie", "Rebecca", "Steven", "Kyle B."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Hello")
        getUsers()
    }
    
    func getUsers(){
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { return }
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url) { data, response, error in
            
            if let httpResponse = response as? HTTPURLResponse {
                print(httpResponse.statusCode)
            }
            
            if let error = error {
                print(error)
            } else if let data = data {
                print(data)
                
                let dataString = String(data: data, encoding: .utf8)
                //print(dataString)
                
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    print(json)
                    
                } catch let err {
                print(err)
                }
            }
        }
        
        dataTask.resume()
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return tempUsers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        let user = tempUsers[indexPath.row]
        
        cell.textLabel?.text = user
        
        
        return cell
    }



}
