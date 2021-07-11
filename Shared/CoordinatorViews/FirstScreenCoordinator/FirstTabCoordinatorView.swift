//
//  SecondScreenCoordinatorView.swift
//  CoordinatorTest (iOS)
//
//  Created by Тузовский Александр Витальевич on 09.07.2021.
//

import SwiftUI

struct FirstTabCoordinatorView: View {
    @ObservedObject var coordinator: FirstTabCoordinator

    init(_ coordinator: FirstTabCoordinator) {
        self.coordinator = coordinator
    }

    var body: some View {
        NavigationView {
            FirstScreenView(coordinator.firstScreenViewModel)
                .navigation(item: $coordinator.childCoordinator) {
                    FirstTabSubCoordinatorView($0)
                }
        }
    }
}

struct FirstTabCoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabCoordinatorView(.init(.init()))
    }
}
