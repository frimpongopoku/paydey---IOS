
import Foundation
 
class ApplicationState : ObservableObject {
	@Published var CURRENT_PAGE : String? = Pages.PAYER_INFO
}
