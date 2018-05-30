//
//  ViewController.swift
//  SPORT 2.0
//
//  Created by Julien SCHMIDT on 30/05/2018.
//  Copyright © 2018 Julien SCHMIDT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Outlet de la liste
    @IBOutlet weak var tableView: UITableView!
    
    // Outlet de champs text "Type d'exercice"
    @IBOutlet weak var addExercice: UITextField!
    
    // Outlet de champs text "Nombres de répétitions"
    @IBOutlet weak var addNumber: UITextField!
    
    //Initialisation du tableau
    var list: [String] = ["Pompes"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Bouton
    @IBAction func addButton(_ sender: UIButton) {
        insertExercice()
    }
    
    
    // Fonction qui insert le résultat dans la liste
    func insertExercice() {
        list.append(addExercice.text!)
        
        let indexPath = IndexPath(row: list.count - 1, section: 0)
        
        tableView.beginUpdates()
        tableView.insertRows(at: [indexPath], with: .automatic)
        tableView.endUpdates()
        
        addExercice.text = ""
        view.endEditing(true)
    }
}

