import DesignSystem
import Base
import SwiftUI

// MARK: ___FILEBASENAMEASIDENTIFIER___

struct ___FILEBASENAMEASIDENTIFIER___: IntentBindingType {
    @StateObject var container: Container<___VARIABLE_productName:identifier___IntentType, ___VARIABLE_productName:identifier___Model.State>
    var intent: ___VARIABLE_productName:identifier___IntentType { self.container.intent }
    var state: ___VARIABLE_productName:identifier___Model.State { self.intent.state }
    
    @Environment(\.dismiss) private var dismiss
}

// MARK: Body

extension ___FILEBASENAMEASIDENTIFIER___: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            
        }
        .backTopBar(title: "", backAction: { self.dismiss() })
        .task {
            self.intent.send(action: .onAppear)
        }
    }
}
