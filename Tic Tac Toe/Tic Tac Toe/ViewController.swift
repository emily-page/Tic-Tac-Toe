//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by ios6 on 1/3/17.
//  Copyright © 2017 ios6. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    @IBOutlet weak var labelSeven: UILabel!
    @IBOutlet weak var labelEight: UILabel!
    @IBOutlet weak var labelNine: UILabel!
    @IBOutlet weak var turnLabel: UILabel!
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var winnerLabel: UILabel!
    
    var allLabels = [UILabel]()
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        
        allLabels = [labelOne, labelTwo, labelThree, labelFour, labelFive, labelSix, labelSeven, labelEight, labelNine]
        turnLabel.text = "X"
    }
    
    @IBAction func tapGesture(sender: UITapGestureRecognizer)
    {

        let pointOne = sender.locationInView(myView)
        for label in allLabels
        {
            if CGRectContainsPoint(label.frame, pointOne)
            {
                placeInToLabel(label)
                checkForWinner()
                computerPlayer()
            }
        }
    }
    
    func placeInToLabel(myLabel: UILabel)
    {
        if myLabel.text == ""
        {
            if turnLabel.text == "X"
            {
                myLabel.text = "X"
                turnLabel.text = "O"
            }
            else
            {
                myLabel.text = "O"
                turnLabel.text = "X"
            }
        }
    }
    
    func computerPlayer()
    {
//        "\(basic, logic, AI)"
        if labelOne.text == "X" && labelTwo.text == ""
        {
            labelTwo.text = "O"
            turnLabel.text = "X"
        }
        else if labelTwo.text == "X" && labelOne.text == ""
        {
            labelOne.text = "O"
            turnLabel.text = "X"
        }
        else if labelThree.text == "X" && labelFour.text == ""
        {
            labelFour.text = "O"
            turnLabel.text = "X"
        }
        else if labelFour.text == "X" && labelThree.text == ""
        {
            labelThree.text = "O"
            turnLabel.text = "X"
        }
        else if labelFive.text == "X" && labelSix.text == ""
        {
            labelSix.text = "O"
            turnLabel.text = "X"
        }
        else if labelSix.text == "X" && labelFive.text == ""
        {
            labelFive.text = "O"
            turnLabel.text = "X"
        }
        else if labelSeven.text == "X" && labelEight.text == ""
        {
            labelEight.text = "O"
            turnLabel.text = "X"
        }
        else if labelEight.text == "X" && labelSeven.text == ""
        {
            labelSeven.text = "O"
            turnLabel.text = "X"
        }
        else if labelNine.text == "X" && labelOne.text == ""
        {
            labelOne.text = "O"
            turnLabel.text = "X"
            if labelOne.text != "" && labelTwo.text == ""
            {
                labelTwo.text = "O"
                turnLabel.text = "X"
                if labelTwo.text != "" && labelThree.text == ""
                {
                    labelThree.text = "O"
                    turnLabel.text = "X"
                    if labelThree.text != "" && labelFour.text == ""
                    {
                        labelFour.text = "O"
                        turnLabel.text = "X"
                        if labelFour.text != "" && labelFive.text == ""
                        {
                            labelFive.text = "O"
                            turnLabel.text = "X"
                            if labelFive.text != "" && labelSix.text == ""
                            {
                                labelSix.text = "O"
                                turnLabel.text = "X"
                                if labelSix.text != "" && labelSeven.text == ""
                                {
                                    labelSeven.text = "O"
                                    turnLabel.text = "X"
                                    if labelSeven.text != "" && labelEight.text == ""
                                    {
                                        labelEight.text = "O"
                                        turnLabel.text = "X"
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        checkForWinner()
    }
    
    func checkForWinner()
    {
        if labelOne.text == labelTwo.text && labelTwo.text == labelThree.text  && labelOne.text != ""
        {
            winnerLabel.text = "Winner"
        }
        else if labelFour.text == labelFive.text && labelFive.text == labelSix.text && labelSix.text != ""
        {
            winnerLabel.text = "Winner"
            print("working")
        }
        else if labelSeven.text == labelEight.text && labelEight.text == labelNine.text && labelNine.text != ""
        {
            winnerLabel.text = "Winner"
        }
        else if labelOne.text == labelFour.text && labelFour.text == labelSeven.text && labelOne.text != ""
        {
            winnerLabel.text = "Winner"
        }
       else if labelTwo.text == labelFive.text && labelFive.text == labelEight.text && labelEight.text != ""
        {
            winnerLabel.text = "Winner"
        }
       else if labelThree.text == labelSix.text && labelSix.text == labelNine.text && labelNine.text != ""
        {
            winnerLabel.text = "Winner"
        }
       else if labelOne.text == labelFive.text && labelFive.text == labelNine.text && labelNine.text != ""
        {
            winnerLabel.text = "Winner"
        }
      else if labelThree.text == labelFive.text && labelFive.text == labelSeven.text && labelSeven.text != ""
        {
            winnerLabel.text = "Winner"
        }
        else
        {
            
        }
        
        if winnerLabel.text == "Winner"
        {
            let alert = UIAlertController(title: "Game Over", message: "\(turnLabel.text!) is not the winner", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Return To Game", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            labelOne.text = ""
            labelTwo.text = ""
            labelThree.text = ""
            labelFour.text = ""
            labelFive.text = ""
            labelSix.text = ""
            labelSeven.text = ""
            labelEight.text = ""
            labelNine.text = ""
            turnLabel.text = "X"
            winnerLabel.text = ""
        }
    }
    
    @IBAction func panGesture(sender: UIPanGestureRecognizer)
    {
        var point = sender.locationInView(view)
        turnLabel.center = CGPointMake(point.x, point.y)
        if sender.state == UIGestureRecognizerState.Ended
        {
            for labels in allLabels
            {
                if CGRectContainsPoint(labels.frame, point)
                {
                    placeInToLabel(labels)
                    checkForWinner()
                }
            }
        }
    }
    
    @IBAction func resetButton(sender: AnyObject)
    {
        labelOne.text = ""
        labelTwo.text = ""
        labelThree.text = ""
        labelFour.text = ""
        labelFive.text = ""
        labelSix.text = ""
        labelSeven.text = ""
        labelEight.text = ""
        labelNine.text = ""
        turnLabel.text = "X"
        winnerLabel.text = ""
    }
    
}
