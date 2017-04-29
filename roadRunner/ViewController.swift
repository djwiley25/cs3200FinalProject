//
//  ViewController.swift
//  roadRunner
//
//  Created by Student on 4/3/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timeData=["04-27 14:10", "04-28 14:30", "04-28 15:30"]
    var pickUpLoc=["Random tester 1", "Random tester 2", "Random tester 3"]
    var destLoc=["Test 1", "Test 2"," Test 3"]
    var miscNotes=["Don't forget the peanut butter", "This person bites, be careful!!", "Don't forget to check your blinker fluid!!"]
    var selectedIndex=0
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func prepare(for segue:UIStoryboardSegue, sender: Any?){
        if segue.identifier=="detailSegue", let detailVC=segue.destination as?
            DetailViewController{
            detailVC.timeDetailText=timeData[selectedIndex]
            detailVC.title=timeData[selectedIndex]
            detailVC.pickUpText=pickUpLoc[selectedIndex]
            detailVC.destText=destLoc[selectedIndex]
            detailVC.notesText=miscNotes[selectedIndex]
            tableView.reloadData()
        }
    }
    @IBAction func unwindToMainMenu(_ sender: UIStoryboardSegue)
    {
        print("unwinding to main")
        if sender.identifier == "saveSegue",
            let addVC = sender.source as? AddViewController,
            let newTime = addVC.selectedDate.text,
            let newPickUp = addVC.pickUpTextField.text,
            let newDest = addVC.destTextField.text,
            let newNotes = addVC.notesTextView.text
        {
            timeData.append(newTime)
            pickUpLoc.append(newPickUp)
            destLoc.append(newDest)
            miscNotes.append(newNotes)
            tableView.reloadData()
        }
        
        if sender.identifier == "finishTrip"
        {
            timeData.remove(at: selectedIndex)
            pickUpLoc.remove(at: selectedIndex)
            destLoc.remove(at: selectedIndex)
            miscNotes.remove(at: selectedIndex)
            tableView.reloadData()
        }
        
    }

}

extension ViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return timeData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text=timeData[indexPath.row]
        
        return cell
    }
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex=indexPath.row
        performSegue(withIdentifier: "detailSegue", sender: self)
    }
}
