//
//  TeamMemberCollectionViewCell.swift
//  SegundoParcialWebServices
//
//  Created by Noel Aguilera Terrazas on 26/03/20.
//  Copyright © 2020 Daniel Aguilera. All rights reserved.
//

import UIKit
import Kingfisher

class TeamMemberCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var imgMember: UIImageView!
    
    var teamMemberElement: TeamMember? {
        didSet {
            self.lblName.text = self.teamMemberElement?.name
            let urlImage = URL(string: self.teamMemberElement!.imgUrl!)
            imgMember.kf.setImage(with: urlImage)
            
            imgMember.layer.borderWidth = 1
            imgMember.layer.masksToBounds = false
            imgMember.layer.borderColor = UIColor.green.cgColor
            imgMember.layer.cornerRadius = imgMember.frame.height / 2
            imgMember.clipsToBounds = true
        }
    }
}
