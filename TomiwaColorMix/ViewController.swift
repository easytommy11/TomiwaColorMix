//
//  ViewController.swift
//  TomiwaColorMix
//
//  Created by Tomiwa Babalola on 11/23/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    @IBOutlet var redSwitch: UISwitch!
    @IBOutlet var greenSwitch: UISwitch!
    @IBOutlet var blueSwitch: UISwitch!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    func updateColor() {
    var red: CGFloat = 0
    var green: CGFloat = 0
    var blue: CGFloat = 0
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
        
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color


    }

    
    override func viewDidLoad() {
        colorView.backgroundColor = .black
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func sliderChanged(_ sender: Any) {
        updateColor()
    }
    


    @IBAction func switchChanged(_ sender: UISwitch) {
       updateColor()

    }
    
    
    
}

