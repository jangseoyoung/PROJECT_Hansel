//
//  SecondViewController.swift
//  Hansel
//
//  Created by 장서영 on 2020/10/14.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var yearLabel : UILabel!
    @IBOutlet weak var dateLabel : UILabel!
    @IBOutlet weak var countLabel : UILabel!

    @IBAction func DeleteButton(_ sender : UIBarButtonItem){
        let alert = UIAlertController(title: "정말 삭제하시겠습니까?", message: "현재 날짜의 모든 기록이 삭제됩니다.", preferredStyle: UIAlertController.Style.alert)
        
        let cancelAction = UIAlertAction(title: "취소", style: .default, handler: nil)
        
        let deleteAction = UIAlertAction(title: "삭제", style: .destructive, handler: nil)
        
        alert.addAction(cancelAction)
        alert.addAction(deleteAction)
        
        present(alert, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.topItem?.title = "All Routes"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
