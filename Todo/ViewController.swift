//
//  ViewController.swift
//  Todo
//
//  Created by 吴昊 on 15/7/11.
//  Copyright (c) 2015年 WH. All rights reserved.
//

import UIKit

var todos : [TodoModel] = [];

func dateFromString(dateStr:String) -> NSDate?{
    let dateFormatter = NSDateFormatter();
    dateFormatter.dateFormat = "yyyy-mm-dddd";
    var date = dateFormatter.dateFromString(dateStr);
    return date;
}

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        todos = [TodoModel(id:"1", image: "children-selected", title:"去游乐场", date: dateFromString("2015-06-30")!),
            TodoModel(id: "2", image: "shopping-cart-selected", title: "2. 购物", date: dateFromString("2014-10-28")!),
            TodoModel(id: "3", image: "phone-selected", title: "3. 打电话", date: dateFromString("2014-10-30")!),
            TodoModel(id: "4", image: "travel-selected", title: "4. Travel to Europe", date: dateFromString("2014-10-31")!)];
        tableView.dataSource = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
//        return todos.count;
        return 100;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = self.tableView.dequeueReusableCellWithIdentifier("todoCell") as! UITableViewCell;
        return cell;
    }
}

