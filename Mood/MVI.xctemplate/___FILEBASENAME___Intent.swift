import Foundation
import Combine
import Base
import LinkNavigator
import CoreKit
import Entity

protocol ___FILEBASENAMEASIDENTIFIER___Type {
    var state: ___VARIABLE_productName:identifier___Model.State { get }
    var navigator: RootNavigatorType { get }
    
    func send(action: ___VARIABLE_productName:identifier___Model.ViewAction)
}

// MARK: ___VARIABLE_productName:identifier___Intent

final class ___FILEBASENAMEASIDENTIFIER___: ObservableObject {
    
    // MARK: Internal
    
    typealias State = ___VARIABLE_productName:identifier___Model.State
    typealias ViewAction = ___VARIABLE_productName:identifier___Model.ViewAction
    
    @Published var state: State
    
    var cancellable: Set<AnyCancellable> = []
    var navigator: RootNavigatorType

    init(
        initialState: State,
        navigator: RootNavigatorType
    ) {
        self.state = initialState
        self.navigator = navigator
    }
}

extension ___FILEBASENAMEASIDENTIFIER___: IntentType, ___VARIABLE_productName:identifier___IntentType {
    func mutate(action: ___VARIABLE_productName:identifier___Model.ViewAction, viewEffect: (() -> Void)?) {
        switch action {
        case .onAppear:
            self.viewOnAppear()
        }
    }
}

// MARK: Custom Method

extension ___FILEBASENAMEASIDENTIFIER___ {
    private func viewOnAppear() {
        
    }
}
