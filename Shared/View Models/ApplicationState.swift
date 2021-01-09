
import Foundation
 
class ApplicationState : ObservableObject {
	@Published var MENU_TYPE  = Menus.MAIN_MENU
	@Published var CURRENT_PAGE : String? = Pages.OLD_INVOICES {
		didSet{
			switch CURRENT_PAGE {
			case Pages.OLD_INVOICES:
				self.MENU_TYPE = Menus.MAIN_MENU
			case Pages.PERSONAL_INFO:
				self.MENU_TYPE = Menus.FORWARD_AND_BACK
			case Pages.PAYER_INFO:
				self.MENU_TYPE = Menus.FORWARD_AND_BACK
			case Pages.ADD_RECORDS:
				self.MENU_TYPE = Menus.ADD_RECORD
			default:
				self.MENU_TYPE = Menus.MAIN_MENU
			}
		}
	}
	
	
	func moveToPreviousPage(){
		if( CURRENT_PAGE == Pages.PERSONAL_INFO){
			self.CURRENT_PAGE = Pages.OLD_INVOICES
			return;
		}
		
		if( CURRENT_PAGE == Pages.PAYER_INFO){
			self.CURRENT_PAGE = Pages.PERSONAL_INFO
			return;
		}
		
		if( CURRENT_PAGE == Pages.ADD_RECORDS){
			self.CURRENT_PAGE = Pages.PAYER_INFO
			return;
		}
	}
	
	
	func moveToNextPage(){
		if( CURRENT_PAGE == Pages.PERSONAL_INFO){
			self.CURRENT_PAGE = Pages.PAYER_INFO
			return;
		}
		
		if( CURRENT_PAGE == Pages.PAYER_INFO){
			self.CURRENT_PAGE = Pages.ADD_RECORDS
			return;
		}
	}

}
