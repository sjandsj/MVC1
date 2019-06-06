//
//  ViewController.swift
//  MVC_1.2
//
//  Created by mac on 06/06/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    var names = ["Shubhanshu", "Akshat", "Aman", "Tony Stark", "Captain America", "Hawkeye", "Hulk"]
    var city = ["Jabalpur", "Dewas", "Bhopal", "L.A", "Brookyln","Qeens", "New York" ]
    var throughDataModels = [DataModels]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 0...(names.count-1) {
            self.throughDataModels.append(DataModels(goodName: names[i], yourCity: city[i]))
            self.tableView.reloadData()
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return throughDataModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        let model:DataModels = throughDataModels[indexPath.row]
        cell.nameLabel.text = model.names
        cell.cityLabel.text = model.city
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

