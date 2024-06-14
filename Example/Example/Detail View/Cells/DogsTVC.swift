//
//  DogsTVC.swift
//  Example
//
//  Created by Manoj Chvan on 14/06/24.
//

import UIKit
import Kingfisher

class DogsTVC: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    
    var imageUrl: String?{
        didSet{
            let url = URL(string: imageUrl ?? "")
            imgView.kf.setImage(with: url)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imgView.layer.cornerRadius = 12
    }

}
