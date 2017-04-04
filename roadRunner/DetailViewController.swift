//
//  DetailViewController.swift
//  roadRunner
//
//  Created by Student on 4/3/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var timeDetailLabel: UILabel!
    @IBOutlet weak var pickupDetailLabel: UILabel!
    @IBOutlet weak var destinationDetailLabel: UILabel!
    @IBOutlet weak var notesDetailLabel: UITextView!
    
    var detailText=""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeDetailLabel.text=detailText

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
