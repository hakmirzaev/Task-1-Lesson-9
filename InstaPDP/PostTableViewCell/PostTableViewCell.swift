//
//  PostTableViewCell.swift
//  InstaPDP
//
//  Created by Bekhruz Hakmirzaev on 26/04/22.
//

import UIKit

class PostTableViewCell: UITableViewCell {


    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var contentLabel: UILabel!
    @IBOutlet var profileImageView: UIImageView!
    @IBOutlet var postImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
