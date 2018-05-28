//
//  CollectionViewTestControllerViewController.swift
//  HelloWorld
//
//  Created by Macbook Pro on 2018. 5. 18..
//  Copyright © 2018년 Min. All rights reserved.
//

import UIKit

class CollectionTestController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
        
        
        self.navigationController?.setNavigationBarHidden(false, animated: false)
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
    
    // MARK: - DataSource
    // 한 섹션당 들어있는 아이템의 갯수
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 150
    }
    
    
    // The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
    //실제 아이템을 생성하여 반환한다.
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cellType = indexPath.row % 2 == 0 ? "cellImageItem" : "cellLabelItem"
        let cell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: cellType, for: indexPath)
        
        switch cellType {
        case "cellImageItem":
            (cell as! CollectionCellImageItem).cellImage?.kf.setImage(with: URL(string: ""))
            break
        case "cellLabelItem":
            (cell as! CollectionCellLabelItem).cellLabel?.text = "\(indexPath.row)"
            break
        default:
            (cell as! CollectionCellLabelItem).cellLabel?.text = "\(indexPath.row)"
        }
        return cell
    }
    
}
