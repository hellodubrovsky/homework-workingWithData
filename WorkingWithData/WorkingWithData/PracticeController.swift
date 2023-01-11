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
        self.tableView.rowHeight = 70
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
        cell.data(title: practice.name, description: practice.description, status: practice.status)
        return cell
    }
}





// MARK: - Practice featch data list

extension PracticeViewController {
    private func featchData() -> [Practice] {
        let practice1 = Practice(name: "test1", status: false, description: "des")
        let practice2 = Practice(name: "test2", status: false, description: "des")
        let practice3 = Practice(name: "test3", status: false, description: "des")
        let practice4 = Practice(name: "test4", status: false, description: "des")
        let practice5 = Practice(name: "test5", status: false, description: "des")
        let practice6 = Practice(name: "test6", status: false, description: "des")
        let practice7 = Practice(name: "test7", status: false, description: "des")
        let practice8 = Practice(name: "test8", status: false, description: "des")
        let practice9 = Practice(name: "test9", status: false, description: "des")
        let practice10 = Practice(name: "test9", status: false, description: "des")
        return [practice1, practice2, practice3, practice4, practice5, practice6, practice7, practice8, practice8, practice9, practice10]
    }
}
