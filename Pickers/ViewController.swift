//
//  ViewController.swift
//  Pickers
//
//  Created by Derrick Showers on 2/6/17.
//  Copyright © 2017 Derrick Showers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var fooPickerView: UIPickerView!
    @IBOutlet weak var barPickerView: UIPickerView!

    let fooPickerViewItems = [
        "html",
        "javascript",
        "css",
        "swift",
        "java",
        "ruby",
        "python"
    ]

    let barPickerViewItems = [
        "steve",
        "derrick",
        "jasnö"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - UIPickerViewDelegate

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {

        if pickerView == fooPickerView {
            return fooPickerViewItems[row]
        }

        if pickerView == barPickerView {
            return barPickerViewItems[row]
        }

        return nil
    }

    // MARK: - UIPickerViewDataSource

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {

        if pickerView == fooPickerView {
            return fooPickerViewItems.count
        }

        if pickerView == barPickerView {
            return barPickerViewItems.count
        }

        return 0
    }
}

