//
//  GreenViewController.swift
//  W7D4-UIDynamics
//
//  Created by Massimo Savino on 2019-07-10.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

import UIKit

class MotionSupport: NSObject, UICollisionBehaviorDelegate {
    var animator: UIDynamicAnimator!
    
    init(movingView: UIView) {
        super.init()
        self.animator = UIDynamicAnimator(referenceView: movingView.superview!)
        
        let recognizer = UIPanGestureRecognizer(target: self, action: #selector(pan))
        movingView.addGestureRecognizer(recognizer)
        
        let collision = UICollisionBehavior(items: [movingView])
        collision.collisionDelegate = self as? UICollisionBehaviorDelegate
        collision.translatesReferenceBoundsIntoBoundary = true
        
        animator.addBehavior(collision)
    }
    
    @objc func pan(_ recognizer: UIPanGestureRecognizer) {
        let view = recognizer.view!
        let behavior = UIDynamicItemBehavior(items: [view])
        
        switch recognizer.state {
        case .began:
            animator.removeBehavior(behavior)
            
        case .changed:
            let translation = recognizer.translation(in: view)
            view.center.x += translation.x
            view.center.y += translation.y
            recognizer.setTranslation(.zero, in: view)
            
        case .ended:
            let velocity = recognizer.velocity(in: view)
            behavior.addLinearVelocity(velocity, for: view)
            behavior.resistance = 2.0
            animator.addBehavior(behavior)
            
        default:
            break
        }
    }
}

class GreenViewController: UIViewController, UICollisionBehaviorDelegate {
    
    // MARK: Properties
    @IBOutlet weak var greenView: UIView!
    
    var movingSupport: MotionSupport!
    
    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.movingSupport = MotionSupport(movingView: greenView!)
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
