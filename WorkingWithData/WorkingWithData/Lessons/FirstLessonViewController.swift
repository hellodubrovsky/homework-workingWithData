//
//  FirstLessonViewController.swift
//  WorkingWithData
//
//  Created by Илья Дубровский on 13.01.2023.
//

import UIKit

class FirstLessonViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = LessonsList.l1.rawValue
        view.backgroundColor = .white
        view.addSubview(informationlabel)
        informationlabel.center = view.center
        let url = "https://google.com"
        self.firstRequest(by: url)
        self.secondRequest(by: url)
        self.thirdRequest(by: url)
    }
    
    private let informationlabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 150, height: 50))
        let underlineAttribute = [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue]
        let underlineAttributedString = NSAttributedString(string: "See logs in xcode!", attributes: underlineAttribute)
        label.attributedText = underlineAttributedString
        label.textAlignment = .center
        return label
    }()
}




// MARK: - Lectures

extension FirstLessonViewController {
    
    
    // Создание URLSession и вызов метода dataTask.
    
    private func firstRequest(by url: String) {
        guard let url = URL(string: url) else { fatalError("Error, invalid URL: \(url).") }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            print("\n----------------------------")
            print("\n Lecture №1")
            print(" URL: \(url)")
            print(" METHOD: URLSession.shared.dataTask")
            if let data = data {
                print("\n Data: \(data)")
            }
            if let response = response as? HTTPURLResponse {
                print(" Response: \(String(describing: response.statusCode))")
            }
            print(" Error: \(String(describing: error))")
        }
        task.resume()
    }
    
    
    // Настройка собственно конфигурации
    
    private func secondRequest(by url: String) {
        guard let url = URL(string: url) else { fatalError("Error, invalid URL: \(url).") }
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest = 60
        configuration.allowsCellularAccess = true
        let session = URLSession(configuration: configuration)
        let task = session.dataTask(with: url) { data, response, error in
            print("\n----------------------------")
            print("\n Lecture №1")
            print(" URL: \(url)")
            print(" METHOD: URLSession & CustomConfiguration")
            if let data = data {
                print("\n Data: \(data)")
            }
            if let response = response as? HTTPURLResponse {
                print(" Response: \(String(describing: response.statusCode))")
            }
            print(" Error: \(String(describing: error))")
        }
        task.resume()
    }
    
    
    // URLRequest
    
    private func thirdRequest(by url: String) {
        guard let url = URL(string: url) else { fatalError("Error, invalid URL: \(url).") }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("key", forHTTPHeaderField: "value")
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            print("\n----------------------------")
            print("\n Lecture №1")
            print(" URL: \(url)")
            print(" METHOD: URLRequest")
            if let data = data {
                print("\n Data: \(data)")
            }
            if let response = response as? HTTPURLResponse {
                print(" Response: \(String(describing: response.statusCode))")
            }
            print(" Error: \(String(describing: error))")
        }
        task.resume()
    }
}



