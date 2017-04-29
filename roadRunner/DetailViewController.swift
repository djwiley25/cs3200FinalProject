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
    
    var timeDetailText=""
    var pickUpText=""
    var destText=""
    var notesText=""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeDetailLabel.text=timeDetailText
        pickupDetailLabel.text=pickUpText
        destinationDetailLabel.text=destText
        notesDetailLabel.text=notesText

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
