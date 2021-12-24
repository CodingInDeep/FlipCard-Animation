//
//  ViewFlip.swift
//  FlashCard GRE
//
//  Created by Deep Mahajan.
//

import UIKit

class FlashCardVC: UIViewController {
    
    //MARK:- Outlets
    @IBOutlet weak var AnswerView: UIView!
    @IBOutlet weak var btnAnswerViewFlip: UIButton!
    @IBOutlet weak var lblAnswerViewWord: UILabel!
    @IBOutlet weak var lblAnswerViewAdjective: UILabel!
    @IBOutlet weak var lblAnswerViewDescription: UILabel!
    @IBOutlet weak var btnAnswerViewReturn: UIButton!
    
    @IBOutlet weak var QuestionView: UIView!
    @IBOutlet weak var btnQuestionViewFlip: UIButton!
    @IBOutlet weak var lblQuestionViewWord: UILabel!
    @IBOutlet weak var lblCLickToSeeMeaning: UILabel!
    
    //MARK:- properties
    var isFlip = false
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK:- Actions
    @IBAction func btnQuestion(_ sender: Any) {
        isFlip = !isFlip
        
        let fromView = isFlip ? QuestionView : AnswerView
        let toView = isFlip ? AnswerView : QuestionView
            
        UIView.transition(from: fromView!, to: toView!, duration: 0.7, options: [.transitionFlipFromRight,.showHideTransitionViews])
        
        }
    @IBAction func btnAnswerViewReturn(_ sender: Any) {
        btnAnswerViewReturn.isEnabled = false
    }
    
}
