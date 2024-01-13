//___FILEHEADER___

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: BaseCoordinator {
    
    var parentCoordinator: BaseCoordinator?
    var children: [BaseCoordinator] = []
    var navigationController: UINavigationController
    
    required init(
        _ navigationController : UINavigationController,
        parent: BaseCoordinator?,
        children: [BaseCoordinator] = []
    ) {
        self.navigationController = navigationController
        self.parentCoordinator = parent
        self.children = children
    }
    
    func start() {
        // 화면시작
        self.push___VARIABLE_productName:identifier___()
    }
    
    func push___VARIABLE_productName:identifier___() {
        let vc = ___VARIABLE_productName:identifier___ViewController(
            store: .init(
                initialState: .init()
            ) {
            ___VARIABLE_productName:identifier___Core()
            },
            coordinator: self
        )
        vc.hidesBottomBarWhenPushed = true
        self.navigateTo(.push(vc))
    }
    
    func moveToDeepLink(url: String) { // 딥링크
        guard url.count > 0 else { return }
        self.navigateTo(.deeplink(url))
    }
}

