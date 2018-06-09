//
//  MainMessageCellTableViewCell.swift
//  Athena
//
//  Created by Cray Jaeger on 6/9/18.
//  Copyright © 2018 Cray Jaeger. All rights reserved.
//

import UIKit

class MainMessageCellTableViewCell: UITableViewCell {
    // Config View
    let viewColor = Colors.athenaBlack
    var conversationId = 0
        
    @IBOutlet weak var contactImage: UIImageView!
    @IBOutlet weak var contactNameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var lastMessageLabel: UILabel!
    @IBOutlet weak var cellView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.backgroundColor = viewColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
