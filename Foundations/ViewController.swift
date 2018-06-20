//
//  ViewController.swift
//  Foundations
//
//  Created by Gabriel Henrique Daniel da Silva on 6/20/18.
//  Copyright © 2018 Gabriel Henrique Daniel da Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    var neymar = Player(photo: UIImage(named:"NEYMAR")!, name: "Neymar", shirtNumber:"10", club:"PSG")
    var diegoSouza = Player(photo: UIImage(named:"DIEGO")!, name: "Diego Souza", shirtNumber:"00", club:"SPFC")
    var gabrielJesus = Player(photo :UIImage(named:"JESUS")!, name:"Gabriel Jesus", shirtNumber:"9", club:"Man City")
    //var gabrielHenrique = Player(photo :UIImage(named:))
    
    lazy var players: [Player] = [neymar, diegoSouza, gabrielJesus]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.delegate = self
        myTableView.dataSource = self
        
 //       tableView.delegate = self
 //       tableView.dataSource = self
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for:indexPath) as! myTableCell
        
        cell.playerImage.image = players[indexPath.row].photo
        cell.playerName.text = players[indexPath.row].name
        cell.playerNumber.text = players[indexPath.row].shirtNumber
        cell.playerClub.text = players[indexPath.row].club
        
        return cell
    }

    func tableView(_ tableView:UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 100
    }
    
}

