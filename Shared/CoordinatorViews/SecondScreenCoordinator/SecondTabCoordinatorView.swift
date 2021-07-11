//
//  SwiftUIView.swift
//  CoordinatorTest (iOS)
//
//  Created by Тузовский Александр Витальевич on 09.07.2021.
//

import SwiftUI

struct SecondTabCoordinatorView: View {
    @ObservedObject private var coordinator: SecondTabCoordinator

    init(_ coordinator: SecondTabCoordinator) {
        self.coordinator = coordinator
    }
    var body: some View {
        Text("second container")
    }
}

struct SecondTabCoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabCoordinatorView(.init(.init()))
    }
}
