//
//  LessonsCollectionViewCell.swift
//  WorkingWithData
//
//  Created by Илья Дубровский on 13.01.2023.
//

import UIKit

// Unique ID protocol.
protocol ReusableView: AnyObject {
    static var identifier: String { get }
}




class LessonsCollectionViewCell: UICollectionViewCell {
    
    func update(lesson: Lesson) {
        self.title.text = lesson.name
        if lesson.status {
            self.contentView.backgroundColor = .green
            self.title.backgroundColor = .white
        } else {
            self.contentView.backgroundColor = .lightGray
            self.title.backgroundColor = .lightGray
        }
    }
    
    private let title: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemOrange
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        settingView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func settingView() {
        contentView.clipsToBounds = true
        contentView.addSubview(title)
        installingConstraints()
        contentView.layer.cornerRadius = 10
        contentView.layer.borderColor = UIColor.black.cgColor
        contentView.layer.borderWidth = 1.0
    }
    
    private func installingConstraints() {
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: contentView.topAnchor),
            title.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8.0),
            title.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            title.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
}



// MARK: - Unique ID for collectionView
extension LessonsCollectionViewCell: ReusableView {
    static var identifier: String { String(describing: self) }
}
