//
//  TableNavViewController.swift
//  ExampleIOSApp
//
//  Created by Skyler Arnold on 10/17/18.
//  Copyright © 2018 Skyler Arnold. All rights reserved.
//

import UIKit

class TableNavViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
	@IBOutlet weak var navTableView: UITableView!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		navTableView.delegate = self
		navTableView.dataSource = self
    }
	
//	func startLoad() {
//		let url = URL(string: "173.255.249.176")!
//		var request = URLRequest(url: url)
//		request.httpMethod = "GET"
//		let data: Data? = "names".data(using: .utf8)!
//		request.httpBody = data
//		
//		let task = URLSession.shared.dataTask(with: request) { data, response, error in
//			if let error = error {
//				handleClientError(error)
//				return
//			}
//			guard let httpResponse = response as? HTTPURLResponse,
//				(200...299).contains(httpResponse.statusCode) else {
//					handleServerError(response)
//					return
//			}
//			if let mimeType = httpResponse.mimeType, mimeType == "application/json",
//				let data = data,
//				let string = String(data: data, encoding: .utf8) {
//				DispatchQueue.main.async {
//					self.navTableView.reload
//				}
//			}
//		}
//		task.resume()
//	}
	
	// MARK: Table View delegate/data source
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 100
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		if let newCell = tableView.dequeueReusableCell(withIdentifier: "NavTVC", for: indexPath) as? NavTableViewCell {
			newCell.titleLabel.text = "abcd"
			newCell.countLabel.text = "1234"
			return newCell
		} else {
			let newCell = tableView.dequeueReusableCell(withIdentifier: "NavTvc", for: indexPath);
			return newCell;
		}
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
