import Foundation
import Combine
import Base
import LinkNavigator
import CoreKit
import Entity

public struct ___FILEBASENAMEASIDENTIFIER___<RootNavigator: RootNavigatorType> {
    public static func generate() -> RouteBuilderOf<RootNavigator> {
        var matchPath: String { Screen.Path.___VARIABLE_productName:identifier___.rawValue }
        return .init(matchPath: matchPath) { navigator, _, _ -> RouteViewController? in
            let intent = ___VARIABLE_productName:identifier___Intent(initialState: .init(), navigator: navigator)
            let vc = DebugWrappingViewController(matchPath: matchPath) {
            ___VARIABLE_productName:identifier___View(container: .init(
                    intent: intent,
                    state: intent.state,
                    modelChangePublisher: intent.objectWillChange
                ))
            }
            return vc
        }
    }
}
