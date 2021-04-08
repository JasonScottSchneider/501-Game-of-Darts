/*
Author: Jason Schneider
Program: 501 (Game of Darts)
Date: April 8, 2021
*/
 
print("You may know the popular darts game called 501. Players start with a score of 501 and work down to zero. Here are the rules:\nEach player plays a “round” where they throw three darts at a board.\nEach throw can score between 1 and 20 points, which may be doubled or tripled depending where it hits on the board.\nIt's also possible to score 25 for the outer bulls-eye or 50 for the inner bulls-eye.\nHouse rule: At the end of three rounds, whoever is closest to zero without going below zero is the winner.\nImagine you’re a game shark. You want to fool people into thinking you’re terrible at this game, but then come back and beat them in one swoop at the end. Model your game progress by adjusting the model of the game with an integer to manipulate how well you and player 2 might or might not play at a game of darts.")

//Start with a variable set to `501` to hold your overall score.
var overallScoreP1 = 501
var overallScoreP2 = 501
print("Your overall score at the start of the game is \(overallScoreP1).")

//Create another variable set to `0` to hold the score for each round.

var roundScoreP1 = 0
var roundScoreP2 = 0

/*
For each throw, update the value of the round score by adding points from the throw.
At the end of each round, calculate your current overall score by subtracting the round score from it. Assign the new value to your overall score, and reset the round score to zero. 
*/

print("How slowly can you “improve” your performance without arousing suspicion?")

/*
After each round, `print` some statements that your opponents might make. If you can, use the value of your current score in their statements.
*/

print("Enter an integer to adjust the model for how well you might play.")
//take user's input to adjust the model of the dart game for player 1
let inputP1 = Int(readLine(strippingNewline: true)!)!
let intP1 = Int(inputP1)

print("Enter an integer to adjust the model for player 2.")
//take user's input to adjust the model of the dart game for player 2
let inputP2 = Int(readLine(strippingNewline: true)!)!
let intP2 = Int(inputP2)

var throwScoreP1: Int = 0
var throwScoreP2: Int = 0
var taunt: Int
var noTrust: Int
var cheating: Int
let talks = ["Player 2 says,\n 'Beginner's luck.'", "Player 2 says,\n 'That's weird.'", "Player 2 says,\n 'I think you are cheating.'", "Player 2 says,\n 'Go play in the junior leagues.'", "Player 2 says,\n 'Learn to play, loser.'"]
//for three rounds
for _ in 1..<4 {
    //check whether score is above zero
    if overallScoreP1 != 0 {
        //player 1
        print("")
        print("It's your turn.")
        print("")
        //for three darts
        for _ in 1..<4 {            
            if Int.random(in: 1..<intP1) < (intP1 - 2) {
                //one throw between 1 and 20 points, which may be doubled or tripled
                throwScoreP1 = Int.random(in: 1..<21)*Int.random(in: 1..<4)
            } else if Int.random(in: 1..<intP1) == (intP1 - 1) {
                //one throw 25 points, which may be doubled or tripled
                throwScoreP1 = 25 * Int.random(in: 1..<4)
            } else if Int.random(in: 1..<intP1) == intP1 {
                //one throw 50 points, which may be doubled or tripled
                throwScoreP1 = 50 * Int.random(in: 1..<4)
            }
            print("You throw a dart and get a score of \(throwScoreP1).")
            //opponent talks smack
            noTrust = Int.random(in: 0..<2)
            cheating = 2
            taunt = Int.random(in: 3..<5)
            if throwScoreP1 == 25 || throwScoreP1 == 50 {
                print("")
                print(talks[cheating])
                print("")
            } else if 10 < throwScoreP1 && throwScoreP1 < 20 {
                print("")
                print(talks[noTrust])
                print("")
            } else if throwScoreP1 < 10 {
                print("")
                print(talks[taunt])
                print("")
            }
            roundScoreP1 += throwScoreP1
            print("Your current round score is \(roundScoreP1) for this throw.")
        }
        //at the end of each round, subtract the round score from the overall score
        overallScoreP1 -= roundScoreP1
        //reset round score to 0 for every round
        roundScoreP1 = 0
        //print("Your round score has been reset to \(roundScoreP1).")
        
        //player 2
        print("")
        print("It's player 2's turn.")
        print("")
        //for three darts
        for _ in 1..<4 {
            if Int.random(in: 1..<intP2) < (intP2 - 2) {
                //one throw between 1 and 20 points, which may be doubled or tripled
                throwScoreP2 = Int.random(in: 1..<21)*Int.random(in: 1..<4)
            } else if Int.random(in: 1..<intP2) == (intP2 - 1) {
                //one throw 25 points, which may be doubled or tripled
                throwScoreP2 = 25 * Int.random(in: 1..<4)
            } else if Int.random(in: 1..<intP2) == intP2 {
                //one throw 50 points, which may be doubled or tripled
                throwScoreP2 = 50 * Int.random(in: 1..<4)
            }
            print("Player 2 throws a dart and gets a score of \(throwScoreP2).")
            roundScoreP2 += throwScoreP2
            print("Player 2's current round score is \(roundScoreP2) for this throw.")
        }
        //at the end of each round, subtract the round score from the overall score
        overallScoreP2 -= roundScoreP2
        //reset round score to 0 for every round
        roundScoreP2 = 0
        //print("Your opponent's round score has been reset to \(roundScoreP2).")
    }
}

//determine a winner
print("")
if overallScoreP1 < overallScoreP2 {
    print("Your overall score is \(overallScoreP1).")
    print("Player 2's overall score is \(overallScoreP2).")
    print("You win!")
} else if overallScoreP1 > overallScoreP2 {
    print("Your overall score is \(overallScoreP1).")
    print("Player 2's overall score is \(overallScoreP2).")
    print("You lose.")
}
/*:
Copyright © 2021 Jason Scott Schneider
email: jschneider@dcccd.edu
 
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */
