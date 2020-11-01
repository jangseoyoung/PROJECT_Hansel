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
        let alert = UIAlertController(title: "정말 삭제하시겠습니까?", message: "선택하신 기록이 삭제됩니다.", preferredStyle: UIAlertController.Style.alert)
        
        let cancelAction = UIAlertAction(title: "취소", style: .default, handler: nil)
        
        let deleteAction = UIAlertAction(title: "삭제", style: .destructive){
            (action) in
        }

        
        alert.addAction(cancelAction)
        alert.addAction(deleteAction)
        
        // present(alert, animated : true, completion : nil)
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        memoTextView.layer.borderWidth = 1.0
        memoTextView.layer.borderColor = UIColor.black.cgColor
        memoTextView.layer.cornerRadius = 20
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    

}
