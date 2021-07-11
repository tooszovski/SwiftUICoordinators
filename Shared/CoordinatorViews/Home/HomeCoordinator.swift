//
//  HomeCoordinator.swift
//  CoordinatorTest (iOS)
//
//  Created by Тузовский Александр Витальевич on 09.07.2021.
//

import Foundation

enum HomeTab {
    case meat
    case veggie
}

class HomeCoordinator: ObservableObject {
    @Published var firstTabCoordinator: FirstTabCoordinator!
    @Published var secondTabCoordinator: SecondTabCoordinator!
    @Published var tab = HomeTab.meat

    init() {
        firstTabCoordinator = .init(self)
        secondTabCoordinator = .init(self)
    }
}

class FirstTabCoordinator: ObservableObject {
    private unowned let parent: HomeCoordinator
    @Published var firstScreenViewModel: FirstScreenViewModel!
    @Published var childCoordinator: FirstTabSubCoordinator?

    init(_ parent: HomeCoordinator) {
        self.parent = parent
        firstScreenViewModel = .init(self)
    }

    func openChild() {
        childCoordinator = .init(self)
    }

    func popToRoot() {
        childCoordinator = nil
    }
}

class SecondTabCoordinator: ObservableObject {
    private unowned let parent: HomeCoordinator

    init(_ parent: HomeCoordinator) {
        self.parent = parent
    }
}

class FirstTabSubCoordinator: ObservableObject {
    private unowned let parent: FirstTabCoordinator
    @Published var thirdViewModel: ThirdScreenViewModel?

    init(_ parent: FirstTabCoordinator) {
        self.parent = parent
    }

    func popToRoot() {
        parent.popToRoot()
    }

    func pushThird() {
        thirdViewModel = .init(.init(self))
    }
}


