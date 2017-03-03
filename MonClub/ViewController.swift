//
//  ViewController.swift
//  MonClub
//
//  Created by 2Gather Arnaud Verrier on 03/03/2017.
//  Copyright © 2017 Arnaud Verrier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var myDict:  [String: AnyObject]?
        if let path = Bundle.main.path(forResource: "Info", ofType: "plist") {
            myDict = NSDictionary(contentsOfFile: path) as? [String: AnyObject]
        }
        if let myDict = myDict {
            print(myDict)
            lblTitle.text = myDict["CFBundleName"] as! String?
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

