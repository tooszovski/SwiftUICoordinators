//
//  ThirdScreenViewModel.swift
//  CoordinatorTest (iOS)
//
//  Created by Тузовский Александр Витальевич on 09.07.2021.
//

import Foundation

class ThirdScreenViewModel: ObservableObject {
    private unowned let coordinator: FirstTabSubCoordinator
    @Published var title = "Third Screen"

    init(_ coordinator: FirstTabSubCoordinator) {
        self.coordinator = coordinator
    }

    func popToRoot() {
        coordinator.popToRoot()
    }
}
