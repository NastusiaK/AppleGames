//
//  FirstViewController.swift
//  MoneyTracker
//
//  Created by Anastasia Kinelska on 9/12/17.
//  Copyright © 2017 Anastasia Kinelska. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let categoriesList = ["Food", "Amenities", "Transportation", "Clothes", "Medicine", "Home", "Vacation", "Fun"]
    
    // MARK: Properties
    
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var balanceTextField: UITextField!
    // @IBOutlet weak var categoryTextField: UITextField!
    
    
    // MARK: Actions
    
    @IBAction func changeBalance(_ sender: UIButton) {
    }
    
    @IBAction func spend(_ sender: UIButton) {
        
    }
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return categoriesList.count
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = categoriesList[indexPath.row]
        return(cell)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

