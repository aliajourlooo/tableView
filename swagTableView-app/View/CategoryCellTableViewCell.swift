//
//  CategoryCellTableViewCell.swift
//  swagTableView-app
//
//  Created by shahin miraftabi on 4/28/18.
//  Copyright © 2018 com.example. All rights reserved.
//

import UIKit

class CategoryCellTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var cellImage: UIImageView!
    
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//        print("salam")
//    }
    
    func updateView (newCell : A_Category)
    {
        self.title.text = newCell.title
        self.cellImage.image = UIImage(named: newCell.imageName)
    }

  

}
