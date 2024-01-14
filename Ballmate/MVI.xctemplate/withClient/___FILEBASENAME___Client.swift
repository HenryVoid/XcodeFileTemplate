//___FILEHEADER___

import Dependencies
import SwiftyJSON

extension DependencyValues {
    var client: ___FILEBASENAMEASIDENTIFIER___ {
        get { self[___FILEBASENAMEASIDENTIFIER___.self] }
        set { self[___FILEBASENAMEASIDENTIFIER___.self] = newValue }
    }
}

// ___VARIABLE_productName:identifier___ API Client
struct ___FILEBASENAMEASIDENTIFIER___ {
    var request: @Sendable () async throws -> Void
}

extension ___FILEBASENAMEASIDENTIFIER___: DependencyKey {
    static var liveValue = ___FILEBASENAMEASIDENTIFIER___(
        request: {
            
        }
    )
}
