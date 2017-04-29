//
//  AddViewController.swift
//  roadRunner
//
//  Created by Student on 4/3/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var timePicker: UIDatePicker!
    @IBOutlet weak var pickUpTextField: UITextField!
    @IBOutlet weak var destTextField: UITextField!
    @IBOutlet weak var notesTextView: UITextView!
    
    @IBOutlet weak var selectedDate: UILabel!
    
    @IBAction func datePickerAction(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd HH:mm"
        let strDate = dateFormatter.string(from: timePicker.date)
        self.selectedDate.text = strDate
        print(selectedDate)
    }
    
    //var date :NSDate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
