//___FILEHEADER___

import Foundation

protocol ___VARIABLE_productName:identifier___RepositoryType: AnyObject {
    
}

final class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_productName:identifier___RepositoryType {
    func request() async -> CommonResponse? {
        return await APIService.shared.requestAPI(
            url: "",
            parameters: [:],
            headers: APIService.shared.requestHeaders(),
            decode: CommonResponse.self
        )
    }
}
