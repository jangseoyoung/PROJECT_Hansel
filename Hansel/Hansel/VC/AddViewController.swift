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
        
        UserDefaults.standard.set(year, forKey:"year")
        UserDefaults.standard.set(month, forKey: "month")
        UserDefaults.standard.set(day, forKey: "day")
        UserDefaults.standard.set(arrivehour, forKey: "arrivehour")
        UserDefaults.standard.set(arriveminute, forKey: "arriveminute")
        UserDefaults.standard.set(leavehour, forKey: "leavehour")
        UserDefaults.standard.set(leaveminute, forKey: "leaveminute")
        UserDefaults.standard.set(address, forKey: "address")
        UserDefaults.standard.set(memo, forKey: "memo")
            
        if !preview.isEmpty{
            for i in 0..<hansel.count{
                preview[i].count+=1
                if preview[i].maindate != date{ // 1. date는 임시 데이터 이거 넣으면 큰일남 2. 대체 button action 안에서 어떻게 이전 정보를 가져오는걸까요
                    // 3. append를 해야 하는데 대체 뭘 어떻게 어팬드해야 오류가 안 나고 꼬이지 않을까요
                    // 4. 모델 두개를 대체 어떻게 써야 할까요 애초에 같은 액션 안에 있어도 되는건가 내가 이해한 것은 무엇인가 있긴 한 것인가
                    // 5. 코드 정리를 해보자 먼저 preview가 이즈엠티면 한셀의 수만큼 반복문을 돌고 카운트를 하나씩 올린다 나중에 이 카운트를 카운트 레이블에 출력해줘야겠지 이게 맞나 일단 암튼
                    // 6. 만약 프리뷰에 있는 날짜가 현재 입력된 날짜와 다르다면 세로운 테이블뷰 셀을 만들어서 넣어주고 같은 날짜가 하나라도 있다면 그 테이블뷰 셀에서 디테일 루트로 넘어가서 거기에 넣어줘야겠지 그럼 이 과정을 어떻게 해야할까 서영아 생각을 하자
                    // 7. 내가 모르는 것은 스위프트 문법인가 이 로직인가 아니면 전부인가
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
