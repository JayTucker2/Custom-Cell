//
//  ViewController.swift
//  Custom Cell
//
//  Created by JAYLAN TUCKER on 11/5/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var tableViewOutlet: UITableView!
    var students = [Student]()

    override func viewDidLoad() {
        super.viewDidLoad()
        students.append(Student(first: "Jay", last: "Tucker", favColor: "Red", id: "230002", lunchHr: 7, favAnimal: "Raccoon"))
        students.append(Student(first: "Helen", last: "Ngyuen", favColor: "Purple", id: "230432", lunchHr: 6, favAnimal: "Raccoon"))
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        // Do any additional setup after loading the view.
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! CustomCell
        cell.configure(first: <#T##String#>, last: <#T##String#>)
        return cell
    }


}

