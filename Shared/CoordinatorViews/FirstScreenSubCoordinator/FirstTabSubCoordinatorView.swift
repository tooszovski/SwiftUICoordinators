//
//  FirstScreenSubCoordinator.swift
//  CoordinatorTest (iOS)
//
//  Created by Тузовский Александр Витальевич on 09.07.2021.
//

import SwiftUI

struct FirstTabSubCoordinatorView: View {
    @ObservedObject var coordinator: FirstTabSubCoordinator

    init(_ coordinator: FirstTabSubCoordinator) {
        self.coordinator = coordinator
    }
    var body: some View {
        SecondScreenView(.init(coordinator))
            .navigation(item: $coordinator.thirdViewModel) {
                ThirdScreenView($0)
            }
    }
}

struct FirstTabSubCoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabSubCoordinatorView(.init(.init(.init())))
    }
}
