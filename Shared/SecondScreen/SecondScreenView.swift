//
//  SecondScreenView.swift
//  CoordinatorTest (iOS)
//
//  Created by Тузовский Александр Витальевич on 09.07.2021.
//

import SwiftUI

struct SecondScreenView: View {

    @ObservedObject var viewModel: SecondScreenViewModel

    init(_ viewModel: SecondScreenViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack {
            Text(viewModel.title)
        }
        .onNavigation {
            viewModel.openThird()
        }
    }
}

struct SecondScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreenView(.init(.init(.init(.init()))))
    }
}
