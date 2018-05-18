//
//  ScrollViewTestController.swift
//  HelloWorld
//
//  Created by Macbook Pro on 2018. 5. 19..
//  Copyright © 2018년 Min. All rights reserved.
//

import UIKit

class ScrollViewTestController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Delegate
    func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView) // called on finger up as we are moving
    {
        print("Fling")
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
