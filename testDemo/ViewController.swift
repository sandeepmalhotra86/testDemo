//
//  ViewController.swift
//  testDemo
//
//  Created by Sandeep Malhotra on 15/01/18.
//  Copyright © 2018 Sandeep Malhotra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let stamp = TimeInterval(1515662460000) / 1000
        let date2 = Date(timeIntervalSince1970: 1515662460000)
        print(date2)
        
        
        let date = Date(timeIntervalSince1970: TimeInterval(stamp))
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(abbreviation: "GMT") //Set timezone that you want
        dateFormatter.locale = NSLocale.current
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm" //Specify your format that you want
        let strDate = dateFormatter.string(from: date)
        print(strDate)
        
        let value = self.epochToLocal(epochTime: Double(stamp))
        print(value)
        
    }

    
    func epochToLocal(epochTime:Double)->String{
        
        let timeResult:Double = epochTime
        let date = NSDate(timeIntervalSince1970: timeResult)
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = DateFormatter.Style.medium //Set time style
        dateFormatter.dateStyle = DateFormatter.Style.medium //Set date style
        let timeZone = TimeZone.autoupdatingCurrent.identifier as String
        dateFormatter.timeZone = TimeZone(identifier: timeZone)
        let localDate = dateFormatter.string(from: date as Date)
        return "\(localDate)"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

