//___FILEHEADER___

import SwiftUI
import ComposableArchitecture
import SwiftUIBackports

struct ___FILEBASENAMEASIDENTIFIER___: View {
    // MARK: Init, Body
    
    var store: StoreOf<___VARIABLE_productName:identifier___Core>
    @ObservedObject var viewStore: ViewStoreOf<___VARIABLE_productName:identifier___Core>
    
    init(store: StoreOf<___VARIABLE_productName:identifier___Core>) {
        self.store = store
        self.viewStore = ViewStore(store, observe: { $0 })
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
        }
        .frame(maxWidth: .infinity)
        .topBar(
            title: self.viewStore.localized.navTitle,
            leftItem: {
                Button {
                    self.viewStore.send(.dismiss)
                } label: {
                    Image("iconBack-1")
                        .padding([.top, .bottom, .trailing], 16)
                }
            },
            rightItem: {}
        )
        .loadingOverlay(isPresented: self.viewStore.isLoading)
        .toast(store: self.store.scope(state: \.toast, action: { $0 }), dismiss: .dismissToast)
        .onAppear {
            self.viewStore.send(.onAppear)
        }
    }
}
