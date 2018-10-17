//
//  PickerDemoViewController.swift
//  ExampleIOSApp
//
//  Created by Skyler Arnold on 10/17/18.
//  Copyright © 2018 Skyler Arnold. All rights reserved.
//

import UIKit

class PickerDemoViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
	@IBOutlet weak var pickerView: UIPickerView!
	let imgNames = ["FeelsBadMan", "FeelsGoodMan", "Kappa", "PogChamp"]
	
    override func viewDidLoad() {
        super.viewDidLoad()
		pickerView.delegate = self
		pickerView.dataSource = self
        // Do any additional setup after loading the view.
    }
	
	func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
		return imgNames[row]
	}
	
	func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
		return imgNames.count
	}
	
	func numberOfComponents(in pickerView: UIPickerView) -> Int {
		return 1
	}
	
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
		
		if let dest = segue.destination as? EmoteViewController {
			let imgName = imgNames[self.pickerView.selectedRow(inComponent: 0)]
			dest.emoteImg = UIImage(named: imgName)
		}
    }
}
