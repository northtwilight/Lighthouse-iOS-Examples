//
//  GravityViewController.swift
//  W7D4-UIDynamics
//
//  Created by Massimo Savino on 2019-07-09.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

import UIKit

class GravityViewController: UIViewController {
    
    // MARK: Properties
    
    @IBOutlet weak var boundaryLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!

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
        
        
    }
    
    func makeBox(x: Int, y: Int, width: Int, height: Int, outputColor: UIColor) -> UIView {
        let rect = CGRect(x: x, y: y, width: width, height: height)
        let outputBox = UIView(frame: rect)
        outputBox.backgroundColor = outputColor
        return outputBox
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
