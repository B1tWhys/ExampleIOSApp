//
//  EmoteViewController.swift
//  ExampleIOSApp
//
//  Created by Skyler Arnold on 10/17/18.
//  Copyright © 2018 Skyler Arnold. All rights reserved.
//

import UIKit

class EmoteViewController: UIViewController {
	@IBOutlet weak var imgView: UIImageView!
	var emoteImg: UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()
		imgView.image = emoteImg
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }

}
