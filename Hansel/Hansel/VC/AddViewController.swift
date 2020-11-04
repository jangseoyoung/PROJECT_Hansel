//
//  AddViewController.swift
//  Hansel
//
//  Created by 장서영 on 2020/10/21.
//

import UIKit

var hansel = [Hansel]()
var preview = [PreRoutes]()

var yeardate : String = " "
var date : String = " "
var arrivetime : String = " "
var leavetime : String = " "

var year : String = ""
var month : String = ""
var day : String = ""

var arrivehour : String = ""
var arriveminute : String = ""
var leavehour : String = ""
var leaveminute : String = ""

var address : String = ""
var memo : String = ""

class AddViewController: UIViewController {
    
    let alert = UIAlertController(title: "경로를 추가하시겠습니까?", message: nil, preferredStyle: UIAlertController.Style.alert)
     
    @IBAction func allRouteButton (_ sender : UIBarItem){
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet weak var yearTextField: UITextField!
    @IBOutlet weak var monthTextField: UITextField!
    @IBOutlet weak var dayTextField: UITextField!
    
    @IBOutlet weak var arrivehourTextField: UITextField!
    @IBOutlet weak var arriveminuteTextField: UITextField!
    @IBOutlet weak var leavehourTextField: UITextField!
    @IBOutlet weak var leaveminuteTextField: UITextField!
    
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var searchButton: UIButton!
    
    @IBOutlet weak var memoTextView: UITextView!
    
    @IBOutlet weak var addButton: UIButton!
    @IBAction func addButton(_ sender : UIButton){
        
        year = yearTextField.text!
        month = monthTextField.text!
        day = dayTextField.text!
        
        arrivehour = arrivehourTextField.text!
        arriveminute = arriveminuteTextField.text!
        
        leavehour = leavehourTextField.text!
        leaveminute = leaveminuteTextField.text!
        
        address = addressTextField.text!
        memo = memoTextView.text!
        
        let item : Hansel = Hansel(year : year, month : month, day: day, arriveHour : arrivehour, arriveMin : arriveminute, leaveHour : leavehour, leaveMin : leaveminute, address : address, memo : memo)
        
    
        if !preview.isEmpty{
            for i in 0..<hansel.count{
                preview[i].count+=1
                if preview[i].maindate != date{
                    
                }
            }
        }
        
        yeardate = year + "년"
        date = month + "월" + day + "일"
        arrivetime = arrivehour + ":" + arriveminute
        leavetime = leavehour + ":" + leaveminute
        
        let cancelAction = UIAlertAction(title: "취소", style: .default, handler: nil)
        
        let addAction = UIAlertAction(title: "추가", style: .default) {
            (action) in
            hansel.append(item)
            self.navigationController?.popViewController(animated : true)
        }
        
        alert.addAction(cancelAction)
        alert.addAction(addAction)
       
        present(alert, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // title = All Routes
        self.navigationController?.navigationBar.topItem?.title = "All Routes"
        
        // memoTextView UI 적용
        self.memoTextView.layer.borderWidth = 1.0
        self.memoTextView.layer.borderColor = UIColor.black.cgColor
        self.memoTextView.layer.cornerRadius = 10
        
        // 버튼 테두리 UI 적용
        makeBorderLine(searchButton)
        makeBorderLine(addButton)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        // 버튼 밑줄 UI 적용
        makeUnderLine(yearTextField)
        makeUnderLine(monthTextField)
        makeUnderLine(dayTextField)
        makeUnderLine(arrivehourTextField)
        makeUnderLine(arriveminuteTextField)
        makeUnderLine(leavehourTextField)
        makeUnderLine(leaveminuteTextField)
        makeUnderLine(addressTextField)
    }
    
    // 버튼 테두리 UI
    func makeBorderLine(_ Button : UIButton){
        Button.layer.borderWidth = 1.0
        Button.layer.borderColor = UIColor.black.cgColor
        Button.layer.cornerRadius = 5
    }
    
    // 입력창 밑줄 UI
    func makeUnderLine(_ textField: UITextField) {
        textField.borderStyle = .none
        let border = CALayer()
        border.frame = CGRect(x: 0, y: textField.frame.size.height-1, width: textField.frame.width, height: 1)
        border.backgroundColor = UIColor.black.cgColor
        textField.layer.addSublayer(border)
        textField.textAlignment = .center
        textField.textColor = UIColor.black
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
