//
//  ThirdScreenView.swift
//  CoordinatorTest (iOS)
//
//  Created by Тузовский Александр Витальевич on 09.07.2021.
//

import SwiftUI

struct ThirdScreenView: View {

    @ObservedObject var viewModel: ThirdScreenViewModel

    init(_ viewModel: ThirdScreenViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            Text(viewModel.title)
            Button("pop to root") {
                viewModel.popToRoot()
            }
        }
    }
}

struct ThirdScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdScreenView(.init(.init(.init(.init()))))
    }
}
