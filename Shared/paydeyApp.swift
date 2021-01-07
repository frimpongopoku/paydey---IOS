
import SwiftUI

@main
struct paydeyApp: App {
 var applicationState  = ApplicationState()
    var body: some Scene {
        WindowGroup {
					IndexPage().environmentObject(applicationState)
        }
    }
}
