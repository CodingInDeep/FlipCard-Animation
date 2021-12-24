//
//  ViewController.swift
//  FlashCard GRE
//
//  Created by Deep Mahajan.
//

import UIKit

class FlipCardVC: UIViewController {
    
    //MARK:- Outlets
    @IBOutlet weak var btnCardFlip: UIButton!
 
    //MARK:- properties
    var isOpen = false
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK:- Actions
    @IBAction func btnCardFlip(_ sender: Any) {
        if isOpen{
            isOpen = false
            let image = UIImage(named: "Card_Front")
            btnCardFlip.setImage(image, for: .normal)
            UIView.transition(with: btnCardFlip, duration: 0.5, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        }else{
            isOpen = true
            let image = UIImage(named: "Card")
            btnCardFlip.setImage(image, for: .normal)
            UIView.transition(with: btnCardFlip, duration: 0.5, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        }
        
    }
    
    
}




