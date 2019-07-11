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
        
        animator = UIDynamicAnimator(referenceView: view)
        snapping = UISnapBehavior(item: folioView, snapTo: view.center)
        pushing = UIPushBehavior(items: [folioView], mode: .instantaneous)
        
        animator.addBehavior(snapping)
        animator.addBehavior(pushing)
        
        let image = UIImage(named: "trees")
        let imageView = UIImageView(image: image)
        imageView.frame.size = folioView.bounds.size
        folioView.addSubview(imageView)
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(pannedView))
        folioView.addGestureRecognizer(panGesture)
        folioView.isUserInteractionEnabled = true
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(showNextViewController))
    }
    
    @objc func pannedView(recognizer: UIPanGestureRecognizer) {
        switch recognizer.state {
        case .began:
            animator.removeBehavior(snapping)
            animator.removeBehavior(pushing)
        case .changed:
            let translation = recognizer.translation(in: view)
            folioView.center = CGPoint(x: folioView.center.x + translation.x, y: folioView.center.y + translation.y)
        case .ended, .cancelled, .failed:
            animator.addBehavior(snapping)
            animator.addBehavior(pushing)
        default:
            break
        }
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

