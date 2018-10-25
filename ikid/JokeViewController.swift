//
//  JokeViewController.swift
//  ikid
//
//  Created by Tejveer Rai on 10/23/18.
//  Copyright © 2018 Tejveer Rai. All rights reserved.
//

import UIKit

class JokeViewController: UIViewController {


    @IBOutlet weak var dadLabel: UILabel!
    @IBOutlet weak var CSELabel: UILabel!
    @IBOutlet weak var politicLabel: UILabel!
    
    var dadPunchLineShown = false;
    var CSEPunchLineShown = false;
    var politicPunchLineShown = false;
    
    @IBAction func dadJokeFlip(_ sender: Any) {
        if(!dadPunchLineShown){
            self.dadLabel.text = "They get toad."
            UIView.transition(with: dadLabel, duration: 0.5, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        }else{
            self.dadLabel.text = "What happens to Frogs when they illegally park their cars?"
            UIView.transition(with: dadLabel, duration: 0.5, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
        dadPunchLineShown = !dadPunchLineShown;
    }
    
    @IBAction func CSEFlip(_ sender: Any) {
        if(!CSEPunchLineShown){
            self.CSELabel.text = "404: Not Found!"
            UIView.transition(with: CSELabel, duration: 0.5, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        }else{
            self.CSELabel.text = "What are my chances at getting into UW CSE?"
            UIView.transition(with: CSELabel, duration: 0.5, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
        CSEPunchLineShown = !CSEPunchLineShown;
    }
    
    @IBAction func politicFlip(_ sender: Any) {
        print(politicPunchLineShown)
        if(!politicPunchLineShown){
            self.politicLabel.text = "That's it. That's the joke."
            UIView.transition(with: politicLabel, duration: 0.5, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        }else{
            self.politicLabel.text = "The 2016 U.S. Presidential Election."
            UIView.transition(with: politicLabel, duration: 0.5, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
        politicPunchLineShown = !politicPunchLineShown;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
