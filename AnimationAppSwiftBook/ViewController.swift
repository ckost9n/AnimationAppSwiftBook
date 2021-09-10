//
//  ViewController.swift
//  AnimationAppSwiftBook
//
//  Created by Konstantin on 10.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var coreAnimationView: UIView!
    private var originCoordinate: CGFloat?

    override func viewDidLoad() {
        super.viewDidLoad()
        originCoordinate = coreAnimationView.frame.origin.x
    }

    @IBAction func startCoreAnimation(_ sender: UIButton) {
        sender.pulsate()
        
        
        
        UIView.animate(withDuration: 0.5, delay: 0, options: [.autoreverse, .repeat], animations: {
            if self.coreAnimationView.frame.origin.x == self.originCoordinate {
                self.coreAnimationView.frame.origin.x -= 40
            } else {
                self.coreAnimationView.frame.origin.x += 40
            }
            
        })
    }
    
}

