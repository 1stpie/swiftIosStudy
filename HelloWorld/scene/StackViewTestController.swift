//
//  StackViewTestController.swift
//  HelloWorld
//
//  Created by Macbook Pro on 2018. 5. 18..
//  Copyright © 2018년 Min. All rights reserved.
//

import UIKit
import Kingfisher

class StackViewTestController: UIViewController {
    @IBOutlet weak var switchButton: UISwitch!
    @IBOutlet weak var imageView: UIImageView!
    
    let imageUrl = "https://scontent.cdninstagram.com/vp/abc3e9aefeef454c83aca849b298c6e8/5B8F82B4/t51.2885-15/sh0.08/e35/p640x640/31890438_187198188768969_2259328650836967424_n.jpg"
    
    @IBAction func backAction(_ sender: UIButton) {
        if switchButton.isOn {
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.setNavigationBarHidden(false, animated: false)
        
        imageView?.kf.setImage(with: URL(string: imageUrl))
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
