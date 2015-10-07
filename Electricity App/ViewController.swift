//
//  ViewController.swift
//  Electricity App
//
//  Created by Dators on 12/07/15.
//  Copyright (c) 2015 AppDevCenter. All rights reserved.
//

import UIKit


//global func
func *(left: NSDecimalNumber, right: NSDecimalNumber) -> NSDecimalNumber{
    return left.decimalNumberByMultiplyingBy(right);
}

class ViewController: UIViewController {

    
    @IBOutlet weak var kwhUsed: UITextField!
    @IBOutlet weak var priceForOneKwh: UITextField!
    @IBOutlet weak var totalSum: UILabel!
    
    
    let defaultPrice = NSDecimalNumber( string: "0.1515")
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //initial value
        priceForOneKwh.text = defaultPrice.stringValue
        kwhUsed.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func testMe(sender: AnyObject) {
    }

    @IBAction func countTotalPrice(sender: AnyObject) {

            let totalSumCounted = NSDecimalNumber(string: kwhUsed.text) * NSDecimalNumber( string: priceForOneKwh.text)
            totalSum.text = NSNumberFormatter.localizedStringFromNumber(totalSumCounted, numberStyle: NSNumberFormatterStyle.CurrencyStyle);
        
    }
}

