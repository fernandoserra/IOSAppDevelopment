//
//  CardViewCell.swift
//  IOSAppDevelepment
//
//  Created by Fernando Serra on 30-03-22.
//

import UIKit

class CardViewCell: UITableViewCell {

    
    @IBOutlet weak var userNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setupCell(username: String){
        userNameLabel.text=username
    }
}
