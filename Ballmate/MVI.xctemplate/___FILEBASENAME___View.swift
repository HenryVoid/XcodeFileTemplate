//___FILEHEADER___

import Foundation
import SwiftUI

struct ___FILEBASENAMEASIDENTIFIER___: View {
    @StateObject private var container: MVIContainer<___VARIABLE_productName:identifier___Intent, ___VARIABLE_productName:identifier___StateProtocol>
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
        }
        .task {
            self.container.intent.viewOnAppear()
        }
    }
}

// MARK: - Build
extension ___FILEBASENAMEASIDENTIFIER___ {
    
    static func build() -> ___VARIABLE_productName:identifier___View {
        let repository = ___VARIABLE_productName:identifier___Repository()
        let model = ___VARIABLE_productName:identifier___Model()
        let intent = ___VARIABLE_productName:identifier___Intent(model: model, repository: repository)
        
        let container = MVIContainer(
            intent: intent,
            model: model as ___VARIABLE_productName:identifier___ModelStateProtocol,
            modelChangePublisher: model.objectWillChange
        )
        
        return ___VARIABLE_productName:identifier___View(container: container)
    }
}
