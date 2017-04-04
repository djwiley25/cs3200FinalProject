//
//  ViewController.swift
//  roadRunner
//
//  Created by Student on 4/3/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tableData=["Trip 1:30pm", "Trip 2:30pm", "Trip 3:30pm"]
    var selectedIndex=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func prepare(for segue:UIStoryboardSegue, sender: Any?){
        if segue.identifier=="detailSegue", let detailVC=segue.destination as?
            DetailViewController{
            detailVC.detailText=tableData[selectedIndex]
        }
    }


}

extension ViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text=tableData[indexPath.row]
        
        return cell
    }
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex=indexPath.row
        performSegue(withIdentifier: "detailSegue", sender: self)
    }
}
