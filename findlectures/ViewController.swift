//
//  ViewController.swift
//  findlectures
//
//  Created by Shashwat Singh on 6/7/17.
//  Copyright © 2017 Shashwat Singh. All rights reserved.
//

import UIKit

class MainController: UITableViewController {

    var Cat: [Category]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        tableView.register(FrontCell.self, forCellReuseIdentifier: "cellId")
        tableView.tableFooterView = UIView()
        setupjson()
        
        
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! FrontCell
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(120)
    }
    
    
    
    func setupjson(){
        
        let url = URL(string: "http://api.myjson.com/bins/knc2j")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
            
            
            guard let processData = data else {return}

            
            do{
                let json = try(JSONSerialization.jsonObject(with: processData, options: .mutableContainers))
                
                print(json)
                
            }catch{
                //print error
            }
            
            
        }.resume()
        
        
    }
    
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

