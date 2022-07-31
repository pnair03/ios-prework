//
//  ViewController.swift
//  Prework
//
//  Created by Pranav Nair on 7/14/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    
    var tip1 = 0
    var tip2 = 0
    var tip3 = 0
    
    let myView = UIView(frame: CGRect(x: 7, y: 200, width: 400, height: 320))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        billAmountTextField.becomeFirstResponder()
        billAmountTextField.keyboardType = .decimalPad
        self.title = "Tip Calculator"
        self.view.addSubview(myView)
        self.view.sendSubviewToBack(myView)
        myView.backgroundColor = UIColor.white
        myView.layer.borderWidth = 5
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        var tipPercentages = [tip1, tip2, tip3]
        let tip = bill * (Double(tipPercentages[tipControl.selectedSegmentIndex]) / 100)
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        totalAmountLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func reset(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(15, forKey: "tip1")
        tip1 = 15
        tipControl.setTitle(String(tip1) + "%", forSegmentAt: 0)
        defaults.set(18, forKey: "tip2")
        tip2 = 18
        tipControl.setTitle(String(tip2) + "%", forSegmentAt: 1)
        defaults.set(20, forKey: "tip3")
        tip3 = 20
        tipControl.setTitle(String(tip3) + "%", forSegmentAt: 2)
        billAmountTextField.text = ""
        tipAmountLabel.text = "$0.00"
        totalAmountLabel.text = "$0.00"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let defaults = UserDefaults.standard
        tip1 = defaults.integer(forKey: "tip1")
        tipControl.setTitle(String(tip1) + "%", forSegmentAt: 0)
        tip2 = defaults.integer(forKey: "tip2")
        tipControl.setTitle(String(tip2) + "%", forSegmentAt: 1)
        tip3 = defaults.integer(forKey: "tip3")
        tipControl.setTitle(String(tip3) + "%", forSegmentAt: 2)
        defaults.synchronize()
        if (defaults.bool(forKey: "darkMode") == true) {
            tipLabel.textColor = UIColor.white
            self.view.backgroundColor = UIColor.black
            tipAmountLabel.textColor = UIColor.white
            totalAmountLabel.textColor = UIColor.white
            billAmountTextField.textColor = UIColor.white
            tipControl.backgroundColor = UIColor.gray
            myView.layer.borderColor = UIColor.systemBlue.cgColor
            myView.backgroundColor = UIColor.black
            tipControl.selectedSegmentTintColor = UIColor.systemBlue
        }
        else {
            tipLabel.textColor = UIColor.black
            self.view.backgroundColor = UIColor.white
            tipAmountLabel.textColor = UIColor.black
            totalAmountLabel.textColor = UIColor.black
            billAmountTextField.textColor = UIColor.black
            tipControl.backgroundColor = UIColor.white
            myView.layer.borderColor = UIColor.systemBlue.cgColor
            myView.backgroundColor = UIColor.white
            tipControl.selectedSegmentTintColor = UIColor.white
        }
        calculateTip(Any.self)
    }
    
}

