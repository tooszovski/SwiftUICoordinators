//
//  CoordinatorTestApp.swift
//  Shared
//
//  Created by Тузовский Александр Витальевич on 09.07.2021.
//

import SwiftUI

@main
struct CoordinatorTestApp: App {

    @StateObject var coordinator = HomeCoordinator()

    var body: some Scene {
        WindowGroup {
            HomeCoordinatorView(coordinator: coordinator)
        }
    }
}
