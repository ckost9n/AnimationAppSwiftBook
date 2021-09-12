//
//  ViewController.swift
//  AnimationAppSwiftBook
//
//  Created by Konstantin on 10.09.2021.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var coreAnimationView: UIView!
//    @IBOutlet weak var springAnimation: SpringView!
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet weak var springButton: SpringButton!
    
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
    
    
    @IBAction func startSpringAnimation(_ sender: SpringButton) {
        springAnimationView.animation = "wobble"
        springAnimationView.curve = "easeIn"
        springAnimationView.force = 2
        springAnimationView.duration = 1
        springAnimationView.delay = 0.3
        springAnimationView.animate()
        
        springButton.animation = "morph"
        springButton.curve = "easeOut"
        springButton.force = 2
        springButton.duration = 1
        springButton.delay = 0.3
        springButton.animate()
    }
    
        
    
    
}

