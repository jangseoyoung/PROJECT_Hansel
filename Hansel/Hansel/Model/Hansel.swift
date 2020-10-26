//
//  Hansel.swift
//  Hansel
//
//  Created by 장서영 on 2020/10/26.
//

import Foundation

struct Hansel {
    var year : String = " "
    var month : String = " "
    var day : String = " "
    
    var arriveHour : String = " "
    var arriveMin : String = " "
    
    var leaveHour : String = " "
    var leaveMin : String = " "
    
    var address : String = " "
    
    var memo : String = " "
    
    init(year : String, month : String, day : String, arriveHour : String, arriveMin : String, leaveHour : String, leaveMin : String, address : String, memo : String){
        self.year = year
        self.month = month
        self.day = day
        
        self.arriveHour = arriveHour
        self.arriveMin = arriveMin
        
        self.leaveHour = leaveMin
        self.leaveMin = leaveMin
        
        self.address = address
        
        self.memo = memo
    }
}
