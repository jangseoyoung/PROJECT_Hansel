//
//  PreTableViewCell.swift
//  Hansel
//
//  Created by 장서영 on 2020/10/26.
//

import UIKit

class PreTableViewCell: UITableViewCell {
    
    @IBOutlet weak var dateLabel : UILabel!
    @IBOutlet weak var countTextView : UITextView!
    @IBOutlet weak var countLabel : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        countTextView.layer.borderWidth = 1.0
        countTextView.layer.borderColor = UIColor.black.cgColor
        countTextView.layer.cornerRadius = 0.5 * countTextView.bounds.size.width
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
