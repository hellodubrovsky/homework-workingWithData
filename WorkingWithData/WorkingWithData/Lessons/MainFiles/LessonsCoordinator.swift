//
//  LessonsCoordinator.swift
//  WorkingWithData
//
//  Created by Илья Дубровский on 13.01.2023.
//

import UIKit

final class LessonsCoordinator {
    
    func searchVC(withId id: Int) -> UIViewController {
        switch id {
        case 0:
            return FirstLessonViewController()
        case 1:
            return SecondLessonViewController()
        case 2:
            return ThirdLessonViewController()
        case 3:
            return FourthLessonViewController()
        case 4:
            return FifthLessonViewController()
        case 5:
            return SixthLessonViewController()
        case 6:
            return SeventhLessonViewController()
        case 7:
            return EightLessonViewController()
        case 8:
            return NinghtLessonViewController()
        case 9:
            return TenthLessonViewController()
        default:
            return UIViewController()
        }
    }
}
