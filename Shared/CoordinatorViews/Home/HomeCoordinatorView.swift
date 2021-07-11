//
//  HomeCoordinatorView.swift
//  CoordinatorTest (iOS)
//
//  Created by Тузовский Александр Витальевич on 09.07.2021.
//

import SwiftUI

struct HomeCoordinatorView: View {
    @ObservedObject var coordinator: HomeCoordinator

    var body: some View {
        TabView(selection: $coordinator.tab) {

            FirstTabCoordinatorView(coordinator.firstTabCoordinator)
            .tabItem { Label("Meat", systemImage: "hare.fill") }
            .tag(HomeTab.meat)

            SecondTabCoordinatorView(coordinator.secondTabCoordinator)
            .tabItem { Label("Veggie", systemImage: "leaf.fill") }
            .tag(HomeTab.veggie)
        }
    }
}

struct HomeCoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        HomeCoordinatorView(coordinator: .init())
    }
}
