//
//  TabBarController.swift
//  WorkingWithData
//
//  Created by Илья Дубровский on 10.01.2023.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        let lessonsNavigationController = UINavigationController(rootViewController: LessonsViewController())
        let practiceNavagationController = UINavigationController(rootViewController: PracticeViewController())
        
        lessonsNavigationController.tabBarItem.title = "Lessons"
        practiceNavagationController.tabBarItem.title = "Practice"
        
        lessonsNavigationController.tabBarItem.image = UIImage(systemName: "book.circle")
        practiceNavagationController.tabBarItem.image = UIImage(systemName: "lightbulb.circle")
        
        self.viewControllers = [lessonsNavigationController, practiceNavagationController]
        
        self.tabBar.backgroundColor = .white
        self.tabBar.tintColor = .black
        self.tabBar.unselectedItemTintColor = .gray
        self.tabBar.layer.borderWidth = 0.2
        self.tabBar.layer.borderColor = UIColor.black.cgColor
    }
}
