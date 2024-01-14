//___FILEHEADER___

import ComposableArchitecture

struct ___FILEBASENAMEASIDENTIFIER___: Reducer {
    struct State: Equatable {
        
        
        var toast: ToasterState<Action>?
        var isLoading: Bool = false
        
        var dismiss: Bool = false
        var destination: Destination?
        var error: NSError?
    }
    
    enum Action: BindableAction, Equatable {
        case onAppear
        
        case dismiss
        case moveTo(Destination?)
        
        case dismissToast
        case removeError
        case binding(BindingAction<State>)
    }
    
    var reduce: Reduce<State, Action> { // 이벤트 관리
        Reduce { state, action in
            switch action {
            case .onAppear:
                return .none
                
            case .dismiss:
                state.dismiss = true
                return .none
            case .moveTo(let destination):
                // handle by viewController
                state.destination = destination
                return .none
                
            case .dismissToast:
                state.toast = nil
                return .none
            case .removeError:
                state.error = nil
                return .none
            case .binding:
                return .none
            }
        }
    }
    
    var body: some ReducerOf<Self> {
        BindingReducer()
        reduce
    }
}

extension ___FILEBASENAMEASIDENTIFIER___.State: LocalizedStringProviding {}

extension Localized<___FILEBASENAMEASIDENTIFIER___.State> {
    // 문자열 관리
    var navTitle: String { "___VARIABLE_productName:identifier___" }
}

extension ___FILEBASENAMEASIDENTIFIER___ {
    // 화면 이동 관리
    enum Destination: Equatable, Hashable {
        
    }
}
