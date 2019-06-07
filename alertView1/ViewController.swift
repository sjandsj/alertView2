//
//  ViewController.swift
//  alertView1
//
//  Created by mac on 07/06/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var mainLAbel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var array = ["shubhanshu","Tony","steve","clint","rogers","natasha"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.nameLabel.text = array[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        creatingAlert(title: "DELETE", message: "Will Be Deleted", indexPath: indexPath)
    }
    
    func creatingAlert(title:String, message:String, indexPath:IndexPath) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction( title: "DELETE", style:UIAlertActionStyle.default, handler: {(action) in alert.dismiss(animated: true, completion: nil)
            self.array.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .fade)
        }))
        alert.addAction(UIAlertAction( title: "Cancel", style:UIAlertActionStyle.default, handler: {(action) in alert.dismiss(animated: true, completion: nil)
        }))
        alert.addAction(UIAlertAction( title: "Cancel", style:UIAlertActionStyle.default, handler: {(action) in alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
        
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

