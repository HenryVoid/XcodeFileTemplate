//___FILEHEADER___

import Combine
import Foundation

final class Container<Intent, State>: ObservableObject {
    
    // MARK: Internal
    
    let intent: Intent
    let state: State
    
    // MARK: Private
    
    private var cancellable: Set<AnyCancellable> = []
    
    
    // MARK: Lifecycle
    
    init(
        intent: Intent,
        state: State,
        modelChangePublisher: ObjectWillChangePublisher
    ) {
        self.intent = intent
        self.state = state
        
        modelChangePublisher
            .receive(on: DispatchQueue.main)
            .sink(receiveValue: objectWillChange.send)
            .store(in: &cancellable)
    }
}
