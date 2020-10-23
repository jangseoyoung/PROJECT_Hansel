//
//  AddViewController.swift
//  Hansel
//
//  Created by 장서영 on 2020/10/21.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet weak var yearTextField: UITextField!
    @IBOutlet weak var monthTextField: UITextField!
    @IBOutlet weak var dayTextField: UITextField!
    
    @IBOutlet weak var arrivehourTextField: UITextField!
    @IBOutlet weak var arriveminuteTextField: UITextField!
    @IBOutlet weak var leavehourTextField: UITextField!
    @IBOutlet weak var leaveminuteTextField: UITextField!
    
    @IBOutlet weak var addressTextField: UITextField!

    @IBOutlet weak var memoTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.topItem?.title = "All Routes"
        self.memoTextView.layer.borderWidth = 1.0
        self.memoTextView.layer.borderColor = UIColor.black.cgColor
        self.memoTextView.layer.cornerRadius = 10
        
        
        
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        self.yearTextField.borderStyle = .none
        let border = CALayer()
        border.frame = CGRect(x: 0, y: yearTextField.frame.size.height-1, width: yearTextField.frame.width, height: 1)
        border.backgroundColor = UIColor.black.cgColor
        yearTextField.layer.addSublayer(border)
        yearTextField.textAlignment = .center
        yearTextField.textColor = UIColor.black
        
        self.monthTextField.borderStyle = .none
        let border1 = CALayer()
        border1.frame = CGRect(x: 0, y: monthTextField.frame.size.height-1, width: monthTextField.frame.width, height: 1)
        border1.backgroundColor = UIColor.black.cgColor
        monthTextField.layer.addSublayer(border1)
        monthTextField.textAlignment = .center
        monthTextField.textColor = UIColor.black
        
        self.dayTextField.borderStyle = .none
        let border2 = CALayer()
        border2.frame = CGRect(x: 0, y: dayTextField.frame.size.height-1, width: dayTextField.frame.width, height: 1)
        border2.backgroundColor = UIColor.black.cgColor
        dayTextField.layer.addSublayer(border2)
        dayTextField.textAlignment = .center
        dayTextField.textColor = UIColor.black
        
        self.arrivehourTextField.borderStyle = .none
        let border3 = CALayer()
        border3.frame = CGRect(x: 0, y: arrivehourTextField.frame.size.height-1, width: arrivehourTextField.frame.width, height: 1)
        border3.backgroundColor = UIColor.black.cgColor
        arrivehourTextField.layer.addSublayer(border3)
        arrivehourTextField.textAlignment = .center
        arrivehourTextField.textColor = UIColor.black
        
        self.arriveminuteTextField.borderStyle = .none
        let border4 = CALayer()
        border4.frame = CGRect(x: 0, y: arriveminuteTextField.frame.size.height-1, width: arriveminuteTextField.frame.width, height: 1)
        border4.backgroundColor = UIColor.black.cgColor
        arriveminuteTextField.layer.addSublayer(border4)
        arriveminuteTextField.textAlignment = .center
        arriveminuteTextField.textColor = UIColor.black
        
        self.leavehourTextField.borderStyle = .none
        let border5 = CALayer()
        border5.frame = CGRect(x: 0, y: leavehourTextField.frame.size.height-1, width: leavehourTextField.frame.width, height: 1)
        border5.backgroundColor = UIColor.black.cgColor
        leavehourTextField.layer.addSublayer(border5)
        leavehourTextField.textAlignment = .center
        leavehourTextField.textColor = UIColor.black
        
        self.leaveminuteTextField.borderStyle = .none
        let border6 = CALayer()
        border6.frame = CGRect(x: 0, y: leaveminuteTextField.frame.size.height-1, width: leaveminuteTextField.frame.width, height: 1)
        border6.backgroundColor = UIColor.black.cgColor
        leaveminuteTextField.layer.addSublayer(border6)
        leaveminuteTextField.textAlignment = .center
        leaveminuteTextField.textColor = UIColor.black
        
        self.addressTextField.borderStyle = .none
        let border7 = CALayer()
        border7.frame = CGRect(x: 0, y: addressTextField.frame.size.height-1, width: addressTextField.frame.width, height: 1)
        border7.backgroundColor = UIColor.black.cgColor
        addressTextField.layer.addSublayer(border7)
        addressTextField.textAlignment = .center
        addressTextField.textColor = UIColor.black
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
