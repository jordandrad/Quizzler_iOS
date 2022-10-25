

import Foundation

struct QuizBrain{
    let quiz = [
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], c: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], c: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], c: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], c: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], c: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], c: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], c: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], c: "Rum"),
        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], c: "Gorilla"),
        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], c: "Australia")

    ]
    var questionNumber = 0
    var score = 0
    
  mutating  func checkAnswer(_ userAnswer: String!) -> Bool {

      if userAnswer == String(quiz[self.questionNumber].correct) {
            // User got it right
            score+=1
            return true
        } else {
            // User got it wrong
            return false
        }
    }
    func getScore() -> Int{
        return score
    }
    func getQuestion() -> String {
        return quiz[self.questionNumber].text
    }
    func getProgress() -> Float{
        return Float(questionNumber) / Float(quiz.count)
    }
    mutating func nextQuestion(){
        if questionNumber < quiz.count - 1{
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }}
    
    func getTitle(_ buttonTitle: String) -> String {
        var answer = ""
        if buttonTitle == "0"{
            answer = quiz[self.questionNumber].answers[0]
        }; if buttonTitle == "1"{
           answer = quiz[self.questionNumber].answers[1]
        }; if buttonTitle == "2"{
            answer = quiz[self.questionNumber].answers[2]
        }
        return answer
    }
    
    
    
  
}
    



