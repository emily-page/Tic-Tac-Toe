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
    
    var allLabels = []
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        
        allLabels = [labelOne, labelTwo, labelThree, labelFour, labelFive, labelSix, labelSeven, labelEight, labelNine]
        turnLabel.text = "X"
    }
    
    
    @IBAction func tapGesture(_ sender: UITapGestureRecognizer)
    {

        let pointOne = sender.location(in: myView)
        for label in allLabels
        {
            if ((label as AnyObject).frame).contains(pointOne)
            {
                placeInToLabel(label as! UILabel)
                checkForWinner()
            }
        }
    }
    
    func checkForWinner()
    {
        if labelOne.text == labelTwo.text && labelTwo.text == labelThree.text  && labelThree.text != ""
        {
            turnLabel.text = "Winner"
        }
        else if labelOne.text == labelFour.text && labelFour.text == labelSeven.text && labelSeven.text != ""
        {
            turnLabel.text = "Winner"
        }
       else if labelTwo.text == labelFive.text && labelFive.text == labelEight.text && labelEight != ""
        {
            turnLabel.text = "Winner"
        }
       else if labelThree.text == labelSix.text && labelSix.text == labelNine.text && labelNine.text != ""
        {
            turnLabel.text = "Winner"
        }
       else if labelFour.text == labelFive.text && labelFive.text == labelSix.text && labelSix.text != ""
        {
            turnLabel.text = "Winner"
        }
       else if labelSeven.text == labelEight.text && labelEight.text == labelNine.text && labelNine.text != ""
        {
            turnLabel.text = "Winner"
        }
       else if labelOne.text == labelFive.text && labelFive.text == labelNine.text && labelNine.text != ""
        {
            turnLabel.text = "Winner"
        }
      else if labelThree.text == labelFive.text && labelFive.text == labelSeven.text && labelSeven.text != ""
        {
            turnLabel.text = "Winner"
        }
        else
        {
            
        }
    }

    func placeInToLabel(_ myLabel: UILabel)
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
    
    @IBAction func panGesture(_ sender: UIPanGestureRecognizer)
    {
        
    }
   

    @IBAction func resetButton(_ sender: AnyObject)
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
    }
    
}

