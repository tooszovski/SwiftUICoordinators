//
//  FirstScreenView.swift
//  CoordinatorTest (iOS)
//
//  Created by Тузовский Александр Витальевич on 09.07.2021.
//

import SwiftUI

struct FirstScreenView: View {

    @ObservedObject var viewModel: FirstScreenViewModel

    init(_ viewModel: FirstScreenViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        Text(viewModel.title)
            .onTapGesture {
                viewModel.openNextCoordinator()
            }
    }
}

struct FirstScreenView_Previews: PreviewProvider {
    static var previews: some View {
        FirstScreenView(.init(.init(.init())))
    }
}
