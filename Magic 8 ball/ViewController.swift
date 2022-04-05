//
//  ViewController.swift
//  Magic 8 ball
//
//  Created by Roro on 3/28/22.
//

import UIKit

class ViewController: UIViewController {
    
    let ballimages = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber : Int = 0
    @IBOutlet weak var magicimage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      newballimage()    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newballimage()
    }


    @IBAction func askbuttonpressed(_ sender: UIButton) {
    newballimage()
    }
    
    func newballimage()
    {
        randomBallNumber = Int(arc4random_uniform(5))
          magicimage.image = UIImage(named: ballimages[randomBallNumber])
    }
}

