//___FILEHEADER___

import Foundation
import Combine
import NetworkKit

protocol ___FILEBASENAMEASIDENTIFIER___Type {
    var state: ___VARIABLE_productName:identifier___Model.State { get }
    
    func send(action: ___VARIABLE_productName:identifier___Model.ViewAction)
}

// MARK: ___VARIABLE_productName:identifier___ViewModel

final class ___FILEBASENAMEASIDENTIFIER___: ObservableObject {
    
    // MARK: Internal
    
    typealias State = ___VARIABLE_productName:identifier___Model.State
    typealias ViewAction = ___VARIABLE_productName:identifier___Model.ViewAction
    
    @Published var state: State
    
    var cancellable: Set<AnyCancellable> = []

    init(
        initialState: State
    ) {
        self.state = initialState
    }
}

extension ___FILEBASENAMEASIDENTIFIER___: VXViewModelType, ___VARIABLE_productName:identifier___ViewModelType {
    func mutate(action: ___VARIABLE_productName:identifier___Model.ViewAction, viewEffect: (() -> Void)?) async {
        switch action {
        case .onLoad:
            break
        case .onAppear:
            break
        }
    }
}

// MARK: Action

extension ___FILEBASENAMEASIDENTIFIER___ {
    
}

// MARK: Custom Method

extension ___FILEBASENAMEASIDENTIFIER___ {
    
}
