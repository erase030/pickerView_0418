//
//  ViewController.swift
//  pickerView_0418
//
//  Created by dit08 on 2019. 4. 18..
//  Copyright © 2019년 dit. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return color.count
    }
    
    var color = ["red", "green", "blue"]
    var emotion = ["Hot", "calm", "beach", "sky","elepants"]
    

    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        picker.dataSource = self
        picker.delegate = self
        lbl.text = color[0]
    }
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return color[row]
    }
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lbl.text = color[row]
        print("component=\(component)")
        print("row=\(row)")
    }


}

