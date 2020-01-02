//
//  ViewController.swift
//  Notification Page
//
//  Created by Marilyn Martha Yusnita Devi Parhusip on 27/08/19.
//  Copyright © 2019 Apple Academy. All rights reserved.
//

import UIKit

class NotificationViewController: UIViewController {
    
    var imagesNotification: [notification] = []

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imagesNotification = createArray()
    
       
    }
    
    func createArray() -> [notification] {
        
        var tempImagesNotification: [notification] = []
        
        let imagesNotification1 = notification(image: #imageLiteral(resourceName: "photo-1464446066817-4116494586bb"), message: "Benny send you an event invitation")
        let imagesNotification2 = notification(image: #imageLiteral(resourceName: "photo-1522881193457-37ae97c905bf"), message: "Edvyn accepts your invitation")
        let imagesNotification3 = notification(image: #imageLiteral(resourceName: "photo-1513398886898-6ae5ff7820f3"), message: "Monica decline your invitation")
        let imagesNotification4 = notification(image: #imageLiteral(resourceName: "photo-1522881193457-37ae97c905bf"), message: "Daniel accept your friend request")
        let imagesNotification5 = notification(image: #imageLiteral(resourceName: "photo-1516126491303-6f54240c8491"), message: "Mary accept your friend request")
        
        tempImagesNotification.append(imagesNotification1)
        tempImagesNotification.append(imagesNotification2)
        tempImagesNotification.append(imagesNotification3)
        tempImagesNotification.append(imagesNotification4)
        tempImagesNotification.append(imagesNotification5)
        
        return tempImagesNotification
        
    }

}

extension NotificationViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imagesNotification.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let imageNotification = imagesNotification[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "NotifCell") as! NotifCell
        
        cell.setNotification(imageNotification: imageNotification)
        
        return cell
        
    
    }
    
    
}

