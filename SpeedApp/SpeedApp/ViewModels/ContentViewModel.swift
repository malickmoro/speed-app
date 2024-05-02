import Foundation
import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var username: String = ""
    @Published var password: String = ""
    
    @Published var showScanner: Bool = false
    
    @Published var scannedCode: String?
    @Published var enteredAccount: String = ""
    
    @Published var currentView: views = .home
    @Published var currentScreen: screens = .splashscreen
    @Published var greeting: greeting = .evening
    
    @Published var user: User = User(name: "Alfred Nyarko",
                                     accounts: [
                                        Account(id: UUID().uuidString, type: "Savings",
                                                accountnumber: "UMB_XXX78965",
                                                balance: 197457.67, currency: .cedi),
                                        Account(id: UUID().uuidString, type: "Checking",
                                                accountnumber: "UMB_XXX12356",
                                                balance: 1157.70, currency: .cedi),
                                        Account(id: UUID().uuidString, type: "Dollar Savings",
                                                accountnumber: "UMB_XXX00894",
                                                balance: 9700.60, currency: .dollar)
                                     ])
    
    let yellow: Color = Color(red: 246/255, green: 180/255, blue: 46/255)
}

extension ContentViewModel {
    
    func validateUser() -> Bool {
        if username == "Tolisso" && password == "Fredrick12@" {
            return true
        } else {
            return false
        }
    }
    
}


extension ContentViewModel : Resettable {
    func reset() {
        username = ""
        password = ""
        
        enteredAccount = ""
        currentView = .home
        currentScreen = .login
        
        showScanner = false
    }
}
