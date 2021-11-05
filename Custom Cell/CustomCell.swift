//
//  CustomCell.swift
//  Custom Cell
//
//  Created by JAYLAN TUCKER on 11/5/21.
//

import Foundation
import UIKit
class CustomCell : UITableViewCell{
    
    @IBOutlet weak var firstOutlet: UILabel!
    @IBOutlet weak var lastOutlet: UILabel!
    
    func configure(first: String, last: String){
        firstOutlet.text = first
        lastOutlet.text = last
    }
    
}
