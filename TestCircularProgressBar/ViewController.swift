//
//  ViewController.swift
//  TestCircularProgressBar
//
//  Created by Jaldeep Patel on 2021-06-07.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var circularProgress: CircularProgressView!
    @IBOutlet var percentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        circularProgress.trackClr = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        circularProgress.progressClr = #colorLiteral(red: 0, green: 0.7097216845, blue: 0.6863465309, alpha: 1)
    }
    
    @IBAction func percentButton30(_ sender: UIButton) {
        circularProgress.setProgressWithAnimation(duration: 1.0, value: 0.3)
        
        var numberIndex = 0.0
        for number in 1...30 {
            Timer.scheduledTimer(withTimeInterval: 0.033 * numberIndex, repeats: false) { Timer in
                self.percentLabel.text = "\(number)%"
            }
            //Incrementing charText everytime to add time delay for each number
            numberIndex += 1
        }
    }
    
    @IBAction func percentButton60(_ sender: UIButton) {
        circularProgress.setProgressWithAnimation(duration: 1.0, value: 0.6)
        
        var numberIndex = 0.0
        for number in 1...60 {
            Timer.scheduledTimer(withTimeInterval: 0.018 * numberIndex, repeats: false) { Timer in
                self.percentLabel.text = "\(number)%"
            }
            //Incrementing charText everytime to add time delay for each number
            numberIndex += 1
        }
    }
    
    @IBAction func percentButton90(_ sender: UIButton) {
        circularProgress.setProgressWithAnimation(duration: 1.0, value: 1.0)
        
        var numberIndex = 0.0
        for number in 1...100 {
            Timer.scheduledTimer(withTimeInterval: 0.01 * numberIndex, repeats: false) { Timer in
                self.percentLabel.text = "\(number)%"
            }
            //Incrementing charText everytime to add time delay for each number
            numberIndex += 1
        }
    }
}


//MARK: - References

//Main Article
//https://www.tutorialspoint.com/create-circular-progress-bar-in-ios

//Supporting Article
//https://cemkazim.medium.com/how-to-create-animated-circular-progress-bar-in-swift-f86c4d22f74b
