//
//  ViewController.swift
//  Hansel
//
//  Created by 장서영 on 2020/10/14.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var PreTableView : UITableView!
    
    @IBOutlet weak var BackgroundView : UIView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = tableView.dequeueReusableCell(withIdentifier: "PreCell") as! PreTableViewCell
        
        Cell.dateLabel.text = UserDefaults.standard.object(forKey: "month") as? String
        

        Cell.countLabel.text = String(hansel.count)
        
        return Cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        PreTableView.dataSource = self
        PreTableView.delegate = self
        PreTableView.rowHeight = 95
        
        let border = CALayer()
        border.frame = CGRect(x: 0, y: BackgroundView.frame.size.height-1, width: BackgroundView.frame.width, height: 1)
        border.backgroundColor = UIColor.black.cgColor
        BackgroundView.layer.addSublayer(border)
        
        UserDefaults.standard.object(forKey: "year")
        UserDefaults.standard.object(forKey: "month")
        UserDefaults.standard.object(forKey: "day")
        UserDefaults.standard.object(forKey: "arrivehour")
        UserDefaults.standard.object(forKey: "arriveminute")
        UserDefaults.standard.object(forKey: "leavehour")
        UserDefaults.standard.object(forKey: "leaveminute")
        UserDefaults.standard.object(forKey: "address")
        UserDefaults.standard.object(forKey: "memo")
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        PreTableView.reloadData()
    }

}

