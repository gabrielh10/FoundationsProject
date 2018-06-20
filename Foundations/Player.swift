//
//  Player.swift
//  Foundations
//
//  Created by Gabriel Henrique Daniel da Silva on 6/20/18.
//  Copyright © 2018 Gabriel Henrique Daniel da Silva. All rights reserved.
//

import Foundation
import UIKit

struct Player {
    var photo: UIImage
    var name: String
    var shirtNumber: String
    var club: String
    
    init(photo: UIImage, name: String, shirtNumber:String, club:String){
        self.photo = photo
        self.name = name
        self.shirtNumber = shirtNumber
        self.club = club
    }
}
