////
////  NameDownloader.swift
////  ExampleIOSApp
////
////  Created by Skyler Arnold on 10/17/18.
////  Copyright © 2018 Skyler Arnold. All rights reserved.
////
//
//import Foundation
//
//enum ConnectionError:Error {
//	case invalidURL
//	case corruptJSONj
//}
//
////func handleClientError(_ error: Error) {
////	print("I fucked up")
////}
//
////func handleServerError(_ error: Response) {
////	print("They fucked up")
////}
//
//
//// https://developer.apple.com/documentation/foundation/url_loading_system/fetching_website_data_into_memory
//func startLoad() {
//	let url = URL(string: "173.255.249.176")!
//	var request = URLRequest(url: url)
//	request.httpMethod = "GET"
//	let data: Data? = "names".data(using: .utf8)!
//	request.httpBody = data
//
//	let task = URLSession.shared.dataTask(with: request) { data, response, error in
//		if let error = error {
//			handleClientError(error)
//			return
//		}
//		guard let httpResponse = response as? HTTPURLResponse,
//			(200...299).contains(httpResponse.statusCode) else {
//				handleServerError(response)
//				return
//		}
//		if let mimeType = httpResponse.mimeType, mimeType == "text/html",
//			let data = data,
//			let string = String(data: data, encoding: .utf8) {
//			DispatchQueue.main.async {
//				self.webView.loadHTMLString(string, baseURL: url)
//			}
//		}
//	}
//	task.resume()
//}
//
//class NameDownloader: NSObject {
//	var names = [String]()
//
//
//	func getNames(fromServer ipAddr: String, path: String) throws {
//		guard let url = URL(string: "173.255.249.176") else {
//			throw ConnectionError.invalidURL
//		}
//
//		var request = URLRequest(url: url)
//		request.httpMethod = "GET"
//		let data: Data? = "names".data(using: .utf8)!
//		request.httpBody = data
//
//		let task = URLSession.shared.dataTask(with: )
//
//		let decoder = JSONDecoder.init()
//
//
//	}
//}
