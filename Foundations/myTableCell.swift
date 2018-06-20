//
//  myTableCell.swift
//  Foundations
//
//  Created by Gabriel Henrique Daniel da Silva on 6/20/18.
//  Copyright © 2018 Gabriel Henrique Daniel da Silva. All rights reserved.
//

import UIKit
class myTableCell: UITableViewCell{
    @IBOutlet weak var playerImage: UIImageView!
    @IBOutlet var playerName:UILabel!
    @IBOutlet var playerNumber:UILabel!
    @IBOutlet var playerClub:UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        //codigo de inicializacao pra mudar algum atributo ao abrir se necessario
    }
}
