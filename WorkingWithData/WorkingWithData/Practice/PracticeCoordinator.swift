//
//  PracticeCoordinator.swift
//  WorkingWithData
//
//  Created by Илья Дубровский on 12.01.2023.
//

import UIKit

final class PracticeCoordinator {
    
    func searchVC(withId id: Int) -> UIViewController {
        switch id {
        case 0:
            return FirstPracticeVC()
        case 1:
            return SecondPracticeVC()
        case 2:
            return ThirdPracticeVC()
        case 3:
            return FourthPracticeVC()
        case 4:
            return FifthPracticeVC()
        case 5:
            return SixthPracticeVC()
        case 6:
            return SeventhPracticeVC()
        case 7:
            return EighthPracticeVC()
        case 8:
            return NinthPracticeVC()
        case 9:
            return TenthPracticeVC()
        default:
            return UIViewController()
        }
    }
}
