//
//  QuestionBrain.swift
//  PsychologicalTest
//
//  Created by Leo on 2020/12/9.
//

import Foundation
struct QuestionBrain {
    let example = [
        Question(title: "1.你每天都喝牛奶嗎？"
                 ,choice1: "有", choice1Destination: 1
                 ,choice2: "沒有", choice2Destination: 2),
        Question(title:  "2.你養過貓？"
                 , choice1: "有", choice1Destination: 6
                 , choice2: "沒有", choice2Destination: 2),
        Question(title: "3.你現在有沒有正職工作？"
                 , choice1: "有", choice1Destination: 6
                 , choice2: "沒有", choice2Destination: 3),
        Question(title: "4.你有好的運動細胞？"
                 , choice1: "有", choice1Destination: 7
                 , choice2: "沒有", choice2Destination: 4),
        Question(title:  "5.你的身材偏肉嗎？"
                 , choice1: "是", choice1Destination: 8
                 , choice2: "不是", choice2Destination: 5),
        Question(title: "6.你認為看電影一定要吃零食？"
                 , choice1: "是", choice1Destination: 8
                 , choice2: "不是", choice2Destination: 9),
        Question(title: "7.你覺得地球上出現過火星人嗎？"
                 , choice1: "有", choice1Destination: 7
                 , choice2: "沒有", choice2Destination: 10),
        Question(title: "8.你曾有過很多戀情？"
                 , choice1: "是", choice1Destination: 11
                 , choice2: "不是", choice2Destination: 8),
        Question(title: "9.你很少看漫畫書？"
                 , choice1: "是", choice1Destination: 12
                 , choice2: "不是", choice2Destination: 9),
        Question(title: "10.你去KTV會佔據麥克風不放？"
                 , choice1: "是", choice1Destination: 12
                 , choice2: "不是", choice2Destination: 13),
        Question(title: "11.喜歡吃漢堡？"
                 , choice1: "喜歡", choice1Destination: 13
                 , choice2: "不喜歡", choice2Destination: 11),
        Question(title: "12.煮菜時會自創不同菜餚？"
                 , choice1: "會", choice1Destination: 14
                 , choice2: "不會", choice2Destination: 12),
        //以16 17 18 19 20 21 分別代表A B C D E F
        Question(title: "13.你很會畫插畫？"
                 , choice1: "是", choice1Destination: 16
                 , choice2: "不是", choice2Destination: 17),
        Question(title: "14.你喜歡格子圖案？"
                 , choice1: "喜歡", choice1Destination: 18
                 , choice2: "不喜歡", choice2Destination: 19),
        Question(title: "15.你很想去美國留學？"
                 , choice1: "是", choice1Destination: 20
                 , choice2: "不是", choice2Destination: 21),
       
    ]
  
    var questionNumber = 0
    mutating func restart(){
        questionNumber = 0 //歸零重新開始
    }
    
    func getQuestionTitle() -> String {
        return example[questionNumber].title //更換標題
    }
    func getChoice1() -> String {
        return example[questionNumber].choice1 //更換choice1
    }
    func getChoice2() -> String {
        return example[questionNumber].choice2 //更換choice２
    }
    
    mutating func nextQuestion(_ userPressed:String) -> Int{
        
        let currentQuestion = example[questionNumber]
        if userPressed == currentQuestion.choice1{
            questionNumber = currentQuestion.choice1Destination
            return questionNumber //為了回傳最後choice1Destination ,choice2Destination 數字
        }else{
            questionNumber = currentQuestion.choice2Destination
            return questionNumber
        }
        
    }
       
        
        
       
        
        
        
        
        
        
        
        
        
        
        
    
}

