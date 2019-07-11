//
//  ViewController.swift
//  W7D4-UIDynamics
//
//  Created by Massimo Savino on 2019-07-08.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

import UIKit

class SnappingViewController: UIViewController {

    @IBOutlet weak var folioView: UIView!
    
    private var animator: UIDynamicAnimator!
    private var snapping: UISnapBehavior!
    private var pushing: UIPushBehavior!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let image = UIImage(named: "trees")
        let imageView = UIImageView(image: image)
        imageView.frame.size = folioView.bounds.size
        folioView.addSubview(imageView)
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(showNextViewController))
    }

    @objc func showNextViewController(_ sender: Any) {
        performSegue(withIdentifier: "green", sender: self)
    }
    
    
     // MARK: - Navigation
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let target = segue.destination as? GreenViewController {
            print("Weed is gone.")
        }
     }
 
}

