//
//  PracticeController.swift
//  WorkingWithData
//
//  Created by Илья Дубровский on 10.01.2023.
//

import UIKit

class PracticeViewController: UIViewController {
    
    private var tableView = UITableView()
    private var practiceList: [Practice] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        practiceList = featchData()
        self.configureTableView()
    }
    
    
    
    // MARK: Private methods
    
    private func configureTableView() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Practice"
        self.view.addSubview(tableView)
        self.tableView.rowHeight = 80
        self.setTableViewDelegates()
        self.tableView.pin(to: view)
        self.tableView.register(PracticeTableViewCell.self, forCellReuseIdentifier: "PracticeCell")
    }
    
    private func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}





// MARK: - UITableViewDelegate & UITableViewDataSource

extension PracticeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return practiceList.count
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PracticeCell") as? PracticeTableViewCell else { return UITableViewCell() }
        let practice = practiceList[indexPath.row]
        cell.data(lesson: practice)
        return cell
    }
}





// MARK: - Practice featch data list

extension PracticeViewController {
    private func featchData() -> [Practice] {
        let practice1 = Practice(name: LessonsList.l1.rawValue, status: false, description: "Место для описания")
        let practice2 = Practice(name: LessonsList.l2.rawValue, status: false, description: "Место для описания")
        let practice3 = Practice(name: LessonsList.l3.rawValue, status: false, description: "Место для описания")
        let practice4 = Practice(name: LessonsList.l4.rawValue, status: false, description: "Место для описания")
        let practice5 = Practice(name: LessonsList.l5.rawValue, status: false, description: "Место для описания")
        let practice6 = Practice(name: LessonsList.l6.rawValue, status: false, description: "Место для описания")
        let practice7 = Practice(name: LessonsList.l7.rawValue, status: false, description: "Место для описания")
        let practice8 = Practice(name: LessonsList.l8.rawValue, status: false, description: "Место для описания")
        let practice9 = Practice(name: LessonsList.l9.rawValue, status: false, description: "Место для описания")
        let practice10 = Practice(name: LessonsList.l10.rawValue, status: false, description: "Место для описания")
        return [practice1, practice2, practice3, practice4, practice5, practice6, practice7, practice8, practice9, practice10]
    }
}
