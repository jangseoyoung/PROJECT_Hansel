//
//  SecondViewController.swift
//  Hansel
//
//  Created by 장서영 on 2020/10/14.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBAction func AllRoutesButton (_ sender : UIBarItem){
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet weak var DetailTableView : UITableView!
    
    @IBOutlet weak var yearLabel : UILabel!
    @IBOutlet weak var dateLabel : UILabel!
    @IBOutlet weak var countLabel : UILabel!
    @IBOutlet weak var routesCount: UITextView!
    
    @IBOutlet weak var BackgroundView : UIView!
    

    @IBAction func DeleteButton(_ sender : UIBarButtonItem){
        let alert = UIAlertController(title: "정말 삭제하시겠습니까?", message: "현재 날짜의 모든 기록이 삭제됩니다.", preferredStyle: UIAlertController.Style.alert)
        
        let cancelAction = UIAlertAction(title: "취소", style: .default, handler: nil)
        
        let deleteAction = UIAlertAction(title: "삭제", style: .destructive){
            (action) in hansel.removeAll()
            
            self.navigationController?.popViewController(animated: true)
            
        }
        
        alert.addAction(cancelAction)
        alert.addAction(deleteAction)
        
        present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        yearLabel.text = yeardate
        dateLabel.text = date
        countLabel.text = String(hansel.count)
        
        
        DetailTableView.dataSource = self
        DetailTableView.delegate = self
        DetailTableView.rowHeight = 152
        
        self.navigationController?.navigationBar.topItem?.title = "All Routes"
        
        self.routesCount.layer.cornerRadius = 0.5 * routesCount.bounds.size.width
        self.routesCount.layer.borderWidth = 2.0
        self.routesCount.layer.borderColor = UIColor.black.cgColor
        

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hansel.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailCell") as! DetailTableViewCell
        
        cell.addressLabel?.text = hansel[indexPath.row].address
        cell.arriveTime?.text = arrivetime
        cell.leaveTime?.text = leavetime
        cell.memoTextView?.text = hansel[indexPath.row].memo
    
        return cell
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        DetailTableView.reloadData()
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
