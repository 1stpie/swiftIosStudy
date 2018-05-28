//
//  SearchBarTestController.swift
//  HelloWorld
//
//  Created by Macbook Pro on 2018. 5. 25..
//  Copyright © 2018년 Min. All rights reserved.
//

import UIKit

class SearchBarTestController: UIViewController, UISearchBarDelegate {

    
    @IBOutlet weak var testSearchbar: UISearchBar!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var data = ["dogs", "Cats", "Goofs", "Apples", "Flogs", "Orange"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        searchBar.delegate = self
        testSearchbar.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
        let filteredData = data.filter({ searchText.isEmpty ? true : $0.contains(searchText)
        })
        print(filteredData)
    }
}
