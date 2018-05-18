//
//  RowItem.swift
//  HelloWorld
//
//  Created by Macbook Pro on 2018. 5. 16..
//  Copyright © 2018년 Min. All rights reserved.
//

import UIKit
import Kingfisher

class RowItem: UITableViewCell {
    
    @IBOutlet weak var rowLabel: UILabel!
    @IBOutlet weak var rowImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setImageUrl(_ imageUrl: String){
        
        guard let url = URL(string: imageUrl) else { return }
        rowImage.kf.setImage(with: url)
    }
}
