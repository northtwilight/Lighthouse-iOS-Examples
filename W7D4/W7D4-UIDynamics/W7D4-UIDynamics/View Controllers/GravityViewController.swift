//
//  GravityViewController.swift
//  W7D4-UIDynamics
//
//  Created by Massimo Savino on 2019-07-09.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

import UIKit

class GravityViewController: UIViewController, UICollisionBehaviorDelegate {
    
    // MARK: Properties
    
    @IBOutlet weak var boundaryLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    
    var greenBox: UIView!
    var redBox: UIView!
    
    var animator: UIDynamicAnimator?
    var attachment: UIAttachmentBehavior?
    
    

    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let greenBox = makeBox(x: 20, y: 20, width: 100, height: 100, outputColor: .green)
        let redBox = makeBox(x: 200, y: 20, width: 60, height: 60, outputColor: .red)
        let blueBlock = makeBox(x: 50, y: 500, width: 200, height: 40, outputColor: .blue)
        
        let grayBarrier = makeBox(x: 0, y: 300, width: 170, height: 20, outputColor: .gray)
        
        let orangeBox = makeBox(x: 300, y: -10, width: 80, height: 80, outputColor: .orange)
        
        self.view.addSubview(greenBox)
        self.view.addSubview(redBox)
        self.view.addSubview(blueBlock)
        self.view.addSubview(grayBarrier)
        self.view.addSubview(orangeBox)
        
        // MARK: Dynamics
        
        animator = UIDynamicAnimator(referenceView: self.view)
        
        let gravity = UIGravityBehavior(items: [greenBox, redBox, orangeBox])
        let vector = CGVector(dx: 0.0, dy: 0.25)
        gravity.gravityDirection = vector
        
        let collision = UICollisionBehavior(items: [greenBox, redBox, blueBlock, orangeBox])
        collision.collisionDelegate = self as? UICollisionBehaviorDelegate
        collision.translatesReferenceBoundsIntoBoundary = true
        
        let maxX = grayBarrier.frame.width + grayBarrier.frame.origin.x
        let maxY = grayBarrier.frame.height + grayBarrier.frame.origin.y
        
        collision.addBoundary(withIdentifier: "collisionBoundary" as NSCopying, from: grayBarrier.frame.origin, to: CGPoint(x: maxX, y: maxY))
        
        collision.action = {
            
            let greenString = NSCoder.string(for: greenBox.transform)
            let redString = NSCoder.string(for: redBox.transform)
            let grayString = NSCoder.string(for: grayBarrier.transform)
            
            let outputText = "\(greenString) : \(redString) : \(grayString)"
            self.positionLabel.text = outputText
        }
        
        
        
        let greenBounce = UIDynamicItemBehavior(items: [greenBox])
        greenBounce.elasticity = 0.6
        
        let redBounce = UIDynamicItemBehavior(items: [redBox])
        redBounce.elasticity = 0.3
        
        let thrashing = UIDynamicItemBehavior(items: [blueBlock])
        thrashing.elasticity = 1.0
        
        animator?.addBehavior(thrashing)
        animator?.addBehavior(redBounce)
        animator?.addBehavior(greenBounce)
        animator?.addBehavior(collision)
        animator?.addBehavior(gravity)
        
    }
    
    func makeBox(x: Int, y: Int, width: Int, height: Int, outputColor: UIColor) -> UIView {
        let rect = CGRect(x: x, y: y, width: width, height: height)
        let outputBox = UIView(frame: rect)
        outputBox.backgroundColor = outputColor
        return outputBox
    }
    
    func collisionBehavior(_ behavior: UICollisionBehavior, beganContactFor item: UIDynamicItem, withBoundaryIdentifier identifier: NSCopying?, at p: CGPoint) {
        var outputString: String
        if let identifier = identifier {
            outputString = "Boundary contact - \(String(describing: identifier))"
        } else {
            outputString = "Boundary contact nil"
        }
        self.boundaryLabel?.text = outputString
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
