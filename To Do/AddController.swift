//
//  AddController.swift
//  To Do
//
//  Created by Rudra Jikadra on 29/12/17.
//  Copyright © 2017 Rudra Jikadra. All rights reserved.
//

import UIKit

class AddController: UIViewController {

    @IBOutlet weak var itemText: UITextField!
    @IBOutlet weak var added: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        added.alpha = 0
        
        // Do any additional setup after loading the view.
        added.layer.masksToBounds = true
        added.layer.cornerRadius = 10
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addItem(_ sender: Any) {
        if (itemText.text != nil) && itemText.text != "" {
            todoList?.append(itemText.text!)
            
            UIView.transition(with: added, duration: 1, options: UIViewAnimationOptions.allowAnimatedContent, animations: {
                self.added.alpha = 1
            }, completion: { (nil) in
                UIView.transition(with: self.added, duration: 1, options: UIViewAnimationOptions.allowAnimatedContent, animations: {
                    self.added.alpha = 0
                }, completion: nil)
            })
            itemText.text = ""
            itemText.placeholder = "Add More Items"
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
