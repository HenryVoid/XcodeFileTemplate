//___FILEHEADER___

import Foundation
import SwiftUI

public class HostingController<ContentView>: UIHostingController<ContentView>
where ContentView: ViewControllable {
    
    public override func loadView() {
        super.loadView()
        self.rootView.loadView()
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.rootView.viewOnAppear(viewController: self)
    }
    
    // call any function to override here...
}
