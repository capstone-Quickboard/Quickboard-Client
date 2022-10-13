//
//  ContactTableViewCell.swift
//  QuickBoard
//
//  Created by Soojeong on 2022/10/03.
//

import UIKit
import MessageUI

class ContactTableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewProfile: UIImageView!
    
    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet weak var labelPosition: UILabel!
    
    @IBOutlet weak var buttonContact: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imageViewProfile.layer.cornerRadius = 33
        imageViewProfile.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func buttonContactClicked(_ sender: Any) {
        if let url = URL(string: "https://github.com/SY2on/quickboard") {
            UIApplication.shared.open(url, options: [:])
        }
    }
}

