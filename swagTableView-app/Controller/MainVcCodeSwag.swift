//
//  ViewController.swift
//  swagTableView-app
//
//  Created by shahin miraftabi on 4/28/18.
//  Copyright © 2018 com.example. All rights reserved.
//

import UIKit

class MainVcCodeSwag: UIViewController  , UITableViewDataSource, UITableViewDelegate
{
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("dfsdg")
       self.tableView.dataSource = self
       self.tableView.delegate = self
    }
    
    
    //why it' shows like this ????????
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(Service.instance.getCategorisData().count)
        return Service.instance.getCategorisData().count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCellTableViewCell
        {
            
            let category = Service.instance.getCategorisData()[indexPath.row]
            cell.updateView(newCell:  category)
            print("34")
            return cell
        }
        else {
            print("2342")
           return  CategoryCellTableViewCell()
        }
    }
   
    
    
}

