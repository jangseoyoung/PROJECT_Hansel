//
//  DetailTableViewCell.swift
//  Hansel
//
//  Created by 장서영 on 2020/10/23.
//

import UIKit



class DetailTableViewCell: UITableViewCell {
    
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var arriveTime: UILabel!
    @IBOutlet weak var leaveTime: UILabel!
    @IBOutlet weak var memoTextView: UITextView!
    @IBOutlet weak var lineimageView: UIImageView!
    @IBAction func smalldeleteButton(_ sender: UIButton) {
        
    }
    
    @IBAction func DeleteDetailButton(_ sender: UIButton) {
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        memoTextView.layer.borderWidth = 1.0
        memoTextView.layer.borderColor = UIColor.black.cgColor
        memoTextView.layer.cornerRadius = 0.5 * memoTextView.bounds.size.width
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    

}
