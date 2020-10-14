//
//  ViewController.swift
//  trafficLights
//
//  Created by  Vadim Tatarchuk on 14.10.2020.
//

import UIKit

class TrafficLightsViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    @IBOutlet weak var triggerButton: UIButton!
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.backgroundColor = UIColor.black
        redView.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.5)
        yellowView.backgroundColor = UIColor(red: 1, green: 1, blue: 0, alpha: 0.5)
        greenView.backgroundColor = UIColor(red: 0, green: 1, blue: 0, alpha: 0.5)
        
        triggerButton.layer.cornerRadius = 20
        triggerButton.setTitle("START", for: .normal)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        redView.layer.cornerRadius = redView.frame.size.height / 2
        yellowView.layer.cornerRadius = yellowView.frame.size.width / 2
        greenView.layer.cornerRadius = greenView.frame.size.width / 2
    }

    @IBAction func clickButton(_ sender: Any) {
        if (redView.backgroundColor == UIColor.red) {
            redView.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.5)
            UIView.animate(withDuration: 0.3, animations: {
              self.yellowView.backgroundColor = UIColor(red: 1, green: 1, blue: 0, alpha: 1)
              self.greenView.backgroundColor = UIColor(red: 0, green: 1, blue: 0, alpha: 0.5)
            })
        } else if (yellowView.backgroundColor == UIColor.yellow) {
            redView.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.5)
            UIView.animate(withDuration: 0.3, animations: {
              self.yellowView.backgroundColor = UIColor(red: 1, green: 1, blue: 0, alpha: 0.5)
              self.greenView.backgroundColor = UIColor(red: 0, green: 1, blue: 0, alpha: 1)
            })
        } else if (greenView.backgroundColor == UIColor.green) {
            UIView.animate(withDuration: 0.3, animations: {
              self.redView.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
              self.yellowView.backgroundColor = UIColor(red: 1, green: 1, blue: 0, alpha: 0.5)
            })
            greenView.backgroundColor = UIColor(red: 0, green: 1, blue: 0, alpha: 0.5)
        } else {
            UIView.animate(withDuration: 0.3, animations: {
              self.redView.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
            })
            triggerButton.setTitle("NEXT", for: .normal)
        }
        
    }
    
}

