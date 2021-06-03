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
