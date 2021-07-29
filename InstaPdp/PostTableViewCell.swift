//
//  PostTableViewCell.swift
//  InstaPdp
//
//  Created by MacBook Pro on 29/07/21.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    @IBOutlet weak var user_img: UIImageView!
    @IBOutlet weak var fullname: UILabel!
    @IBOutlet weak var post_img: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
