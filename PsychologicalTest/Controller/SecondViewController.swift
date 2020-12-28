//
//  SecondViewController.swift
//  PsychologicalTest
//
//  Created by Leo on 2020/12/9.
//

import UIKit

class SecondViewController: UIViewController {
    var int = 0 //用來接收第一頁的number
    let dataAnswer = Answer()//另外分析的字料
    @IBOutlet weak var typeABCDEF: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(number: int)
    }
    @IBAction func returnFirst(_ sender: Any) {
        dismiss(animated: true, completion: nil)//返回原本頁面
    }
    func updateUI(number:Int){
        switch number {//判斷number的數字分別代表什麼資料與什麼型
        case 16:
            answerLabel.text = dataAnswer.answer["A"]
            typeABCDEF.text = "A型"
        case 17:
            answerLabel.text = dataAnswer.answer["B"]
            typeABCDEF.text = "B型"
        case 18:
            answerLabel.text = dataAnswer.answer["C"]
            typeABCDEF.text = "C型"
        case 19:
            answerLabel.text = dataAnswer.answer["D"]
            typeABCDEF.text = "D型"
        case 20:
            answerLabel.text = dataAnswer.answer["E"]
            typeABCDEF.text = "E型"
        case 21:
            answerLabel.text = dataAnswer.answer["F"]
            typeABCDEF.text = "F型"
        default:
            break
        }
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
