//
//  GreenViewController.swift
//  W7D4-UIDynamics
//
//  Created by Massimo Savino on 2019-07-10.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

import UIKit




class GreenViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var greenView: UIView!
    
    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(showNextViewController))
    }

    @objc func showNextViewController(_ sender: Any?) {
        performSegue(withIdentifier: "gravity", sender: self)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
