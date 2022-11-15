//
//  ViewController.swift
//  Animations
//
//  Created by Luis Garcia on 13/11/22.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    var ani : LottieAnimationView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didChangeSegment(_ sender: UISegmentedControl){
        
        switch sender.selectedSegmentIndex{
        case 0:
            view.backgroundColor = .yellow
            ani?.stop()
            ani = LottieAnimationView(name: "smile")
            ani?.frame = self.view.frame
            
            ani?.animationSpeed = 0.2
            ani?.loopMode = .playOnce
            self.view.addSubview(ani!)
            
            ani?.play{(finis) in
                self.ani?.isHidden = true
                
                
            }
            
            
            
            
            
        case 1:
            
            view.backgroundColor = .blue
            ani = LottieAnimationView(name: "button")
            ani?.frame = self.view.frame
            //ani?.animationSpeed = 0.2
            ani?.loopMode = .playOnce
            self.view.addSubview(ani!)
            
           
            ani?.play{(finis) in
                self.ani?.isHidden = true
                
                
            }
                      
            
           
            
        case 2:
            view.backgroundColor = .green
            ani = LottieAnimationView(name: "allin")
            ani?.frame = self.view.frame
            //ani?.animationSpeed = 0.2
            ani?.loopMode = .playOnce
            self.view.addSubview(ani!)
            
           
            ani?.play{(finis) in
                self.ani?.isHidden = true
                
                
            }
        
            
            
            
        default:
            view.backgroundColor = .yellow
        }
        
    }

    

}

