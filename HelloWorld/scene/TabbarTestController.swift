//
//  TabbarTestController.swift
//  HelloWorld
//
//  Created by Macbook Pro on 2018. 5. 26..
//  Copyright © 2018년 Min. All rights reserved.
//

import UIKit

class TabbarTestController: UIViewController, UITabBarDelegate, UIToolbarDelegate {

    @IBAction func hello(_ sender: UIBarButtonItem) {
        print("안녕")
    }
    
    @IBAction func hi(_ sender: UIBarButtonItem) {
        print("hi")
    }
    
    @IBAction func goodNight(_ sender: UIBarButtonItem) {
        print("good night")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
