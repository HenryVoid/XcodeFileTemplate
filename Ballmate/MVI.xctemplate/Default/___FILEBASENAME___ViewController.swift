//___FILEHEADER___

import Foundation
import UIKit
import SwiftUI
import ComposableArchitecture
import Combine

final class ___FILEBASENAMEASIDENTIFIER___: BaseViewController {
    var store: StoreOf<___VARIABLE_productName:identifier___Core>
    var viewStore: ViewStoreOf<___VARIABLE_productName:identifier___Core>
    
    var coordinator: ___VARIABLE_productName:identifier___Coordinator
    
    private var cancellables = Set<AnyCancellable>()
    
    init(store: StoreOf<___VARIABLE_productName:identifier___Core>, coordinator: ___VARIABLE_productName:identifier___Coordinator) {
        self.store = store
        self.viewStore = ViewStore(store, observe: { $0 })
        self.coordinator = coordinator
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.wrappedHostingView()
        self.bind()
    }
}

extension ___FILEBASENAMEASIDENTIFIER___ {
    private func wrappedHostingView() {
        let rootView = ___VARIABLE_productName:identifier___View(store: self.store)
        let uiHosingVC = CustomUIHostingController(rootView: rootView)
        
        view.backgroundColor = .clear
        addChild(uiHosingVC)
        view.addSubview(uiHosingVC.view)
        uiHosingVC.didMove(toParent: self)
        
        uiHosingVC.view.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    private func bind() {
        self.viewStore.publisher
            .map(\.dismiss)
            .removeDuplicates()
            .sink { [weak self] isDismiss in
                guard let `self`, isDismiss else { return }
                self.coordinator.navigateTo(.pop)
            }
            .store(in: &cancellables)
        
        self.viewStore.publisher
            .map(\.destination)
            .removeDuplicates()
            .sink { [weak self] destination in
                guard let `self`, let destination else { return }
                self.viewStore.send(.moveTo(nil))
                
                switch destination {
                    
                }
            }
            .store(in: &cancellables)
        
        self.viewStore.publisher
            .map(\.error)
            .removeDuplicates()
            .sink { [weak self] error in
                guard let `self`, let error else { return }
                self.viewStore.send(.removeError)
                AppCommonViewModel.shared.setErrorData(
                    error: error,
                    showErrorPage: { _ in
                        
                    }
                )
            }
            .store(in: &cancellables)
        
        self.viewStore.publisher
            .map(\.popup)
            .removeDuplicates()
            .sink { [weak self] msg in
                guard let `self`, let msg else { return }
                let alert = CustomAlertView(message: msg)
                let confirm = CustomAlertAction(title: "확인", style: .default, handler: { action in
                    self.viewStore.send(.dismissPopup)
                })
                
                alert.addActions(btns: [confirm])
                alert.show()
            }
            .store(in: &cancellables)
    }
}
