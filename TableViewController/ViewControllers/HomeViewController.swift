//
//  HomeViewController.swift
//  TableViewController
//
//  Created by iFlame on 26/04/17.
//  Copyright © 2017 IFlame. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Get the new view controller using segue.destinationViewController.
        print("Destination =>> \(segue.destination)")
        
        if let controller = segue.destination as? ListingDelegate
        {            
            controller.reloadMyData(withArray: ["Hello", "Hello1","Hello2", "Hello3", "Hello4", "Hello5", "Hello6", "Hello7", "Hello8", "Hello9", "Hello10", "Hello11", "Hello12", "Hello13", "Hello14", "Hello15", "Hello", "Hello", "Hello", "Hello"])
            
            //controller.printMyName()
            
        }

        // Pass the selected object to the new view controller.
    }
 

    @IBAction func submitPressed(_ sender: Any) {
        
        self.performSegue(withIdentifier: "SegueListView", sender: nil)
        
    }
    
    
}
