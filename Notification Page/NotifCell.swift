//
//  NotifCell.swift
//  Notification Page
//
//  Created by Marilyn Martha Yusnita Devi Parhusip on 27/08/19.
//  Copyright © 2019 Apple Academy. All rights reserved.
//

import UIKit

class NotifCell: UITableViewCell {

    @IBOutlet weak var notifImageView: UIImageView!
    
    @IBOutlet weak var notifMessageLabel: UILabel!
    
    
    
    func setNotification(imageNotification: notification) {
        notifImageView.image = imageNotification.image
        notifMessageLabel.text = imageNotification.message
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
