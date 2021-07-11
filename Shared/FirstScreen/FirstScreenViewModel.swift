//
//  FirstScreenViewModel.swift
//  CoordinatorTest (iOS)
//
//  Created by Тузовский Александр Витальевич on 09.07.2021.
//

import Foundation

class FirstScreenViewModel: ObservableObject {
    private unowned let coordinator: FirstTabCoordinator
    @Published var title = "First Screen"

    init(_ coordinator: FirstTabCoordinator) {
        self.coordinator = coordinator
    }

    func openNextCoordinator() {
        coordinator.openChild()
    }
}
