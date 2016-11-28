//
//  ViewController.swift
//  MiraclePill
//
//  Created by Macbook Air on 11/26/16.
//  Copyright © 2016 David Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    

    @IBOutlet weak var pillImage: UIImageView!
    @IBOutlet weak var pillLabel: UILabel!
    @IBOutlet weak var pillPrice: UILabel!
    
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var streetAddressLabel: UILabel!
    @IBOutlet weak var streetAddressTextField: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var successImage: UIImageView!

    
    @IBOutlet weak var buyImage: UIImageView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var statePicker: UIPickerView!
    
    let states = [ "Alabama,", "Arkansas,", "Arizona,", "Alaska,", "California,", "Colorado,", "Connecticut,", "Delaware,", "Florida,", "Georgia,"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        statePicker.dataSource = self
        statePicker.delegate = self
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState())
        statePicker.isHidden = true
    }
//    @IBAction func buyImage(_ sender: Any) {
//        statePicker.isHidden = true
//        pillLabel.isHidden = true
//        pillImage.isHidden = true
//        pillPrice.isHidden = true
//        divider.isHidden = true
//        fullNameLabel.isHidden = true
//        fullNameTextField.isHidden = true
//        streetAddressLabel.isHidden = true
//        streetAddressTextField.isHidden = true
//        cityLabel.isHidden = true
//        cityTextField.isHidden = true
//        stateLabel.isHidden = true
//        statePickerBtn.isHidden = true
//        statePicker.isHidden = true
//        buyImage.isHidden = true
//        successImage.isHidden = true
//
//    }
    
}

