//
//  TeamMember.swift
//  SegundoParcialWebServices
//
//  Created by Noel Aguilera Terrazas on 26/03/20.
//  Copyright © 2020 Daniel Aguilera. All rights reserved.
//

import Foundation

// MARK: - TeamMember
struct TeamMember: Codable {
    var name: String?
    var imgUrl: String?
    
    enum CodingKeys: String, CodingKey {
        case name
        case imgUrl = "img_url"
    }
}
