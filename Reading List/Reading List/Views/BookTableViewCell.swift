//
//  BookTableViewCell.swift
//  Reading List
//
//  Created by Alex Shillingford on 6/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class BookTableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelOutlet: UILabel!
    @IBOutlet weak var checkedButtonOutlet: UIButton!
    var book: Book?
    let checkedImage = UIImage(named: "checked")
    let uncheckedImage = UIImage(named: "unchecked")
    
    
    @IBAction func checkedButtonPressed(_ sender: UIButton) {
        
    }
    
    func updateViews() {
        labelOutlet.text = book?.title
        if book?.hasBeenRead == true {
            checkedButtonOutlet.setImage(checkedImage, for: .normal)
        } else {
            checkedButtonOutlet.setImage(uncheckedImage, for: .normal)
        }
    }
    
    
    
    
}
