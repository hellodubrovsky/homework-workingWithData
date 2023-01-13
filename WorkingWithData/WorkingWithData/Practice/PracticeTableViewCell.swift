//
//  PracticeTableViewCell.swift
//  WorkingWithData
//
//  Created by Илья Дубровский on 11.01.2023.
//

import UIKit

class PracticeTableViewCell: UITableViewCell {
    
    
    
    // MARK: - Init

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    // MARK: - Private UI-elements
    
    private let titlePractice: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 14)
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let statusPractice: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let descriptionPractice: UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.font = .systemFont(ofSize: 10)
        label.numberOfLines = 3
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    // MARK: - Public func
    
    func data(lesson: Practice) {
        self.titlePractice.text = lesson.name
        self.descriptionPractice.text = lesson.description
        if lesson.status {
            self.statusPractice.image = UIImage(systemName: "checkmark.shield.fill")
            self.statusPractice.tintColor = .systemGreen
        } else {
            self.statusPractice.image = UIImage(systemName: "xmark.shield.fill")
            self.statusPractice.tintColor = .systemOrange
        }
    }
    
    
    
    // MARK: - Layout
    
    private func setLayout() {
        self.addSubview(titlePractice)
        self.addSubview(statusPractice)
        self.addSubview(descriptionPractice)
        
        NSLayoutConstraint.activate([
            titlePractice.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
            titlePractice.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            titlePractice.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
        ])
        
        NSLayoutConstraint.activate([
            statusPractice.topAnchor.constraint(equalTo: self.topAnchor, constant: 12),
            statusPractice.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
        ])
        
        NSLayoutConstraint.activate([
            descriptionPractice.topAnchor.constraint(equalTo: self.titlePractice.bottomAnchor, constant: 6),
            descriptionPractice.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            descriptionPractice.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50)
        ])
    }
}
