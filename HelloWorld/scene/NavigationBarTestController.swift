//
//  NavigationBarTestController.swift
//  HelloWorld
//
//  Created by Macbook Pro on 2018. 5. 25..
//  Copyright © 2018년 Min. All rights reserved.
//

import UIKit

class NavigationBarTestController: UIViewController, UINavigationBarDelegate {

    @IBOutlet weak var naviBar: UINavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        naviBar.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    func navigationBar(_ navigationBar: UINavigationBar, didPush item: UINavigationItem) {
        print("HEELLOO")
    }
    
    func navigationBar(_ navigationBar: UINavigationBar, didPop item: UINavigationItem) {
        print("POPPPP")
    }
   
    @IBAction func pushRightButton(_ sender: Any) {
        print("test")
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
