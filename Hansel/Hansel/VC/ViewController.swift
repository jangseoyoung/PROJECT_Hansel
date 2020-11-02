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
        return hansel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = tableView.dequeueReusableCell(withIdentifier: "PreCell") as! PreTableViewCell
        
        Cell.dateLabel.text = date
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
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        PreTableView.reloadData()
    }

}

