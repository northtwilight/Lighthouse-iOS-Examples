//
//  ViewController.swift
//  W4D4-RealmDB
//
//  Created by Massimo Savino on 2019-06-19.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    
    var modelBuilder = ModelBuilder()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // calling x times results in the same entries duplicated
        // modelBuilder.populateRealm()
        
        // deletes the first dog in the List
        // modelBuilder.deleteSomething()
        
        modelBuilder.incrementFirstDogAge()
        
        // Note: Careful
        // modelBuilder.deletePooches()
    }

}

