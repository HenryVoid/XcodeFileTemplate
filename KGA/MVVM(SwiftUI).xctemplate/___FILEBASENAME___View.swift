//___FILEHEADER___

import Foundation
import SwiftUI

// MARK: ___FILEBASENAMEASIDENTIFIER___

struct ___FILEBASENAMEASIDENTIFIER___: VXViewModelBindingType {
    @StateObject var container: Container<___VARIABLE_productName:identifier___ViewModelType, ___VARIABLE_productName:identifier___Model.State>
    var viewModel: ___VARIABLE_productName:identifier___ViewModelType { self.container.viewModel }
    var state: ___VARIABLE_productName:identifier___Model.State { self.viewModel.state }
    
    init(container: Container<___VARIABLE_productName:identifier___ViewModelType, ___VARIABLE_productName:identifier___Model.State>) {
        self._container = StateObject(wrappedValue: container)
        self.viewModel.send(action: .onLoad)
    }
}

// MARK: Body

extension ___FILEBASENAMEASIDENTIFIER___: ViewControllable {
    
    var body: some View {
        VStack {
            
        }
        .task {
            self.viewModel.send(action: .onAppear)
        }
    }
}

// MARK: Build

extension ___FILEBASENAMEASIDENTIFIER___ {
    static func build(viewModel: ___VARIABLE_productName:identifier___ViewModel) -> HostingController<___FILEBASENAMEASIDENTIFIER___> {
        return ___FILEBASENAMEASIDENTIFIER___(
            container: .init(
                viewModel: viewModel as ___VARIABLE_productName:identifier___ViewModelType,
                state: viewModel.state,
                modelChangePublisher: viewModel.objectWillChange
            )
        )
        .viewController
    }
}
