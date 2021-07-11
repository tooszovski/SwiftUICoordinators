//
//  SecondScreenViewModel.swift
//  CoordinatorTest (iOS)
//
//  Created by Тузовский Александр Витальевич on 09.07.2021.
//

import Foundation

class SecondScreenViewModel: ObservableObject {
    private unowned let coordinator: FirstTabSubCoordinator
    @Published var title = "Second Screen"

    init(_ coordinator: FirstTabSubCoordinator) {
        self.coordinator = coordinator
    }

    func openThird() {
        coordinator.pushThird()
    }
}
