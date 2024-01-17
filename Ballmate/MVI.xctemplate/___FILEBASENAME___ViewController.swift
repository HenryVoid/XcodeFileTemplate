//___FILEHEADER___

import Foundation
import UIKit
import SwiftUI
import RxSwift
import RxCocoa

final class ___FILEBASENAMEASIDENTIFIER___: UIViewController {
    var adapter : SwiftUIAdapter<___VARIABLE_productName:identifier___View>!
    
    private lazy var backButton = UIBarButtonItem()
    
    var disposeBag = DisposeBag()
    
    init() {
        super.init(nibName: nil, bundle: nil)
        self.adapter = SwiftUIAdapter(
            view: ___VARIABLE_productName:identifier___View.build(),
            parent: self
        )
        
        self.configNavigationBar()
        self.bind()
    }
    
    deinit {
        print("deinit ___FILEBASENAMEASIDENTIFIER___")
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    /** Override load view to load the SwiftUI adapted view */
    override func loadView() {
        self.view = self.adapter.uiView;
    }
    
    private func configNavigationBar() {
        self.navigationItem.setLeftBarButton(self.backButton, animated: true)
        
        self.backButton.image = UIImage(named: "icon_back")
        self.backButton.title = ""
        
        self.navigationItem.title = "___VARIABLE_productName:identifier___"
        
        self.tabBarController?.tabBar.isHidden = true
    }
}

extension ___FILEBASENAMEASIDENTIFIER___ {
    private func bind() {
        self.backButton.rx.tap
            .asDriver()
            .drive(onNext: { [weak self] in
                self?.back()
            })
            .disposed(by: self.disposeBag)
    }
}
