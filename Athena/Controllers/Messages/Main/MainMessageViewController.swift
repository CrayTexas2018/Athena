//
//  MainMessageViewController.swift
//  Athena
//
//  Created by Cray Jaeger on 6/9/18.
//  Copyright © 2018 Cray Jaeger. All rights reserved.
//

import UIKit

class MainMessageViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 50
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MessageCellMain", for: indexPath) as! MainMessageCellTableViewCell

        // Configure the cell...
        cell.conversationId = 10
        cell.contactNameLabel.text = "Cray Jaeger"
        cell.lastMessageLabel.text = "Yesterday"
        cell.messageLabel.text = "This is the message label text"
        cell.backgroundColor = Colors.athenaBlack
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
