//
//  SettingsViewController.swift
//  Prework
//
//  Created by Pranav Nair on 7/16/22.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tip1TextField: UITextField!
    @IBOutlet weak var tip2TextField: UITextField!
    @IBOutlet weak var tip3TextField: UITextField!
    @IBOutlet weak var tip1Label: UILabel!
    @IBOutlet weak var tip2Label: UILabel!
    @IBOutlet weak var tip3Label: UILabel!
    @IBOutlet weak var darkModeLabel: UILabel!
    @IBOutlet weak var darkModeSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tip1TextField.keyboardType = .numberPad
        tip2TextField.keyboardType = .numberPad
        tip3TextField.keyboardType = .numberPad
        let defaults = UserDefaults.standard
        darkModeSwitch.isOn = defaults.bool(forKey: "darkMode")
        self.title = "Settings"
        if darkModeSwitch.isOn == false {
            self.view.backgroundColor = UIColor.white
            tip1Label.textColor = UIColor.black
            tip2Label.textColor = UIColor.black
            tip3Label.textColor = UIColor.black
            darkModeLabel.textColor = UIColor.black

        }
        else {
            self.view.backgroundColor = UIColor.black
            tip1Label.textColor = UIColor.white
            tip2Label.textColor = UIColor.white
            tip3Label.textColor = UIColor.white
            darkModeLabel.textColor = UIColor.white
        }
        
        tip1TextField.text = String(defaults.integer(forKey: "tip1"))
        tip2TextField.text = String(defaults.integer(forKey: "tip2"))
        tip3TextField.text = String(defaults.integer(forKey: "tip3"))
        defaults.synchronize()
    }
    
    @IBAction func changeTip1(_ sender: Any) {
        let defaults = UserDefaults.standard
        if (Int(tip1TextField.text!) != nil) {
            let tip1 = Int(tip1TextField.text!)
            defaults.set(tip1, forKey: "tip1")
        }
        else {
            defaults.set(0, forKey: "tip1")
        }
        defaults.synchronize()
    }
    
    @IBAction func changeTip2(_ sender: Any) {
        let defaults = UserDefaults.standard
        if (Int(tip2TextField.text!) != nil) {
            let tip2 = Int(tip2TextField.text!)
            defaults.set(tip2, forKey: "tip2")
        }
        else {
            defaults.set(0, forKey: "tip2")
        }
        defaults.synchronize()
    }
    
    @IBAction func changeTip3(_ sender: Any) {
        let defaults = UserDefaults.standard
        if (Int(tip3TextField.text!) != nil) {
            let tip3 = Int(tip3TextField.text!)
            defaults.set(tip3, forKey: "tip3")
        }
        else {
            defaults.set(0, forKey: "tip3")
        }
        defaults.synchronize()
    }
    
    
    @IBAction func changeDarkMode(_ sender: Any) {
        let defaults = UserDefaults.standard
        if (darkModeSwitch.isOn == false) {
            self.view.backgroundColor = UIColor.white
            tip1Label.textColor = UIColor.black
            tip2Label.textColor = UIColor.black
            tip3Label.textColor = UIColor.black
            darkModeLabel.textColor = UIColor.black
        }
        else {
            darkModeSwitch.isOn = true
            self.view.backgroundColor = UIColor.black
            tip1Label.textColor = UIColor.white
            tip2Label.textColor = UIColor.white
            tip3Label.textColor = UIColor.white
            darkModeLabel.textColor = UIColor.white
        }
        defaults.set(darkModeSwitch.isOn, forKey: "darkMode")
        defaults.synchronize()
    }

}
