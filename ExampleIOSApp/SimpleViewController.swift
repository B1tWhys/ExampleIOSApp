//
//  SimpleViewController.swift
//  ExampleIOSApp
//
//  Created by Skyler Arnold on 10/17/18.
//  Copyright © 2018 Skyler Arnold. All rights reserved.
//

import UIKit

class SimpleViewController: UIViewController {
	@IBOutlet weak var myProgressView: UIProgressView!
	@IBOutlet weak var mySpinner: UIActivityIndicatorView!
	@IBOutlet weak var mySwitch: UISwitch!
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		self.mySpinner.startAnimating()
        // Do any additional setup after loading the view.
    }
    
	@IBAction func sliderDidMove(_ sender: UISlider) {
		myProgressView.progress = sender.value
	}
	
	@IBAction func updateSpinnerAnimation() {
		if (mySwitch.isOn) {
			mySpinner.startAnimating()
		} else {
			mySpinner.stopAnimating()
		}
	}
	
	override func viewWillAppear(_ animated: Bool) {
		updateSpinnerAnimation()
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
