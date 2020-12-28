//
//  ViewController.swift
//  PsychologicalTest
//
//  Created by Leo on 2020/12/9.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choise2Button: UIButton!
    var questionBrain = QuestionBrain()
    var number = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        questionUpdateUI()
    }
    @IBSegueAction func second(_ coder: NSCoder) -> SecondViewController? {
        let controller = SecondViewController(coder: coder)
        controller?.int = number //會得到number = 16 17 18 19 20 21 其中一個
        return controller
    }
    @IBAction func answerButtonPressed(_ sender: UIButton) {

        number = questionBrain.nextQuestion(sender.currentTitle!)
        //當前選項若等於questionBrain.nextQuestion 的choise1 就會得到即將要換的題目choice1Destination
    
        if number < 16 {
        questionUpdateUI() //當回傳Number 小於 16 持續更新標題與選項
            
        }else{//大於１６時number 會得到16,17,18,19,20,21其中一項值用於傳資料於下個
            questionBrain.restart() //呼叫questionBrain questionNumber 使他重置等於0
            questionUpdateUI()//重新呼叫等於一開始頁面
            performSegue(withIdentifier: "end", sender: nil)//跳到下一頁
        }
    }
    func questionUpdateUI(){//用來一開始顯示的選項及題目答案及後續button按後跟新題目選項
        choice1Button.setTitle(questionBrain.getChoice1(), for: .normal)
        choise2Button.setTitle(questionBrain.getChoice2(), for: .normal)
        textLabel.text = questionBrain.getQuestionTitle()
    }
}

