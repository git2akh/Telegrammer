//
//  NewMemberHandler.swift
//  HelloBot
//
//  Created by Givi Pataridze on 23.05.2018.
//

import Foundation
import Telegrammer

class NewMemberHandler: Handler {
    
    typealias NewMemberCallback = (_ update: Update) -> Void
    
    let filters = StatusUpdateFilters.newChatMembers
    var callback: NewMemberCallback
    
    init(callback: @escaping NewMemberCallback) {
        self.callback = callback
    }
    
    func check(update: Update) -> Bool {
        guard let message = update.message else { return false }
        guard filters.check(message) else { return false }
        return true
    }
    
    func handle(update: Update, dispatcher: Dispatcher) {
        callback(update)
    }
}
