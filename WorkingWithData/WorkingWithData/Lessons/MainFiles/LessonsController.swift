//
//  ViewController.swift
//  WorkingWithData
//
//  Created by Илья Дубровский on 10.01.2023.
//

import UIKit

class LessonsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Lectures"
        view.backgroundColor = .white
        self.lessonsList = fetchData()
        self.configureCollectionView()
    }
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    private var lessonsList: [Lesson] = []
    private var coordinator = LessonsCoordinator()
    
    private func configureCollectionView() {
        self.view.addSubview(collectionView)
        self.collectionView.pin(to: view)
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.register(LessonsCollectionViewCell.self, forCellWithReuseIdentifier: LessonsCollectionViewCell.identifier)
    }
}



extension LessonsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return lessonsList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LessonsCollectionViewCell.identifier, for: indexPath) as? LessonsCollectionViewCell else { return UICollectionViewCell() }
        let data = lessonsList[indexPath.row]
        cell.update(lesson: data)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = self.coordinator.searchVC(withId: indexPath.row)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}



extension LessonsViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 16.0, height: 60)
    }
}




extension LessonsViewController {
    private func fetchData() -> [Lesson] {
        let lesson1 = Lesson(name: LessonsList.l1.rawValue, status: false)
        let lesson2 = Lesson(name: LessonsList.l2.rawValue, status: false)
        let lesson3 = Lesson(name: LessonsList.l3.rawValue, status: false)
        let lesson4 = Lesson(name: LessonsList.l4.rawValue, status: false)
        let lesson5 = Lesson(name: LessonsList.l5.rawValue, status: false)
        let lesson6 = Lesson(name: LessonsList.l6.rawValue, status: false)
        let lesson7 = Lesson(name: LessonsList.l7.rawValue, status: false)
        let lesson8 = Lesson(name: LessonsList.l8.rawValue, status: false)
        let lesson9 = Lesson(name: LessonsList.l9.rawValue, status: false)
        let lesson10 = Lesson(name: LessonsList.l10.rawValue, status: false)
        return [lesson1, lesson2, lesson3, lesson4, lesson5, lesson6, lesson7, lesson8, lesson9, lesson10]
    }
}
