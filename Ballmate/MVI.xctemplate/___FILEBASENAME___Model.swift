//___FILEHEADER___

import Foundation
import SwiftUI
import Dependencies

protocol ___VARIABLE_productName:identifier___StateProtocol {
    
}

protocol ___VARIABLE_productName:identifier___ActionProtocol: AnyObject {
    
    func showToast(_ msg: String?)
}

// MARK: - State
final class ___VARIABLE_productName:identifier___Model: ObservableObject, ___VARIABLE_productName:identifier___ModelStateProtocol {
    @Dependency(\.toaster) var toaster
}


// MARK: - Action
extension ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_productName:identifier___ModelActionProtocol {
    
    
    func showToast(_ msg: String?) {
        Task { @MainActor in
            await self.toaster.showMsg(msg)
        }
    }
}
