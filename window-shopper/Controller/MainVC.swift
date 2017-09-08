//
//  ViewController.swift
//  window-shopper
//
//  Created by Andrew Taylor on 08/09/2017.
//  Copyright © 2017 Andrew Taylor. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet var wageTxt: CurrencyTextField!
    @IBOutlet var priceTxt: CurrencyTextField!
    
    
    @IBOutlet var resultLbl: UILabel!
    @IBOutlet var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //adding the calculate button to the keyboard
        let calButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calButton.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        calButton.setTitle("Calculate", for: .normal)
        calButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calButton
        priceTxt.inputAccessoryView = calButton
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    
    @objc func calculate() {
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }


}

