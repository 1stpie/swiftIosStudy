//
//  ViewController.swift
//  HelloWorld
//
//  Created by Macbook Pro on 2018. 5. 16..
//  Copyright © 2018년 Min. All rights reserved.
//

import UIKit

class TestTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
//        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - UITableViewDataSource
    // 한 섹션에 들어가는 row의 갯수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Scenes.lists.count
    }
    
    //행에 노출되는 Cell 정보를 생성할 때 호출된다. return 되는 Cell을 TableView에 노출시킨다.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: RowItem = tableView.dequeueReusableCell(withIdentifier: "rowItem", for: indexPath) as! RowItem
        cell.rowLabel?.text = "\(Scenes.lists[indexPath.row].title)"
        cell.setImageUrl("https://support.apple.com/content/dam/edam/applecare/images/en_US/homepage/homepage_productnav_iphone_2x.png")
    
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
    //row가 선택되었을 경우 호출됨
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = storyboard?.instantiateViewController(withIdentifier: Scenes.lists[indexPath.row].storyBoardId)
        
        if let vc = viewController {
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}

