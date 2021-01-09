import SwiftUI

struct FloatingBottomNav: View {
	@EnvironmentObject var appState : ApplicationState
	
	var body: some View {
		ZStack{
			RoundedRectangle(cornerSize: CGSize(width: 30, height: 210))
				.foregroundColor(.transWhite)
				.shadow(color: .backgroundWhite, radius: 3, x: 6, y: 11)
				.frame(width:250, height:75)
			self.getMenuInterface(menuType: appState.MENU_TYPE)
		}
	}
	
	func getMenuInterface( menuType: String) ->  some View {
		switch menuType {
		case Menus.MAIN_MENU:
			return AnyView(MainMenuUI(state: self.appState))
		case Menus.FORWARD_AND_BACK:
			return AnyView(DirectionalButtons(state: appState))
		case Menus.ADD_RECORD:
			return AnyView(AddRecordMenu(state: appState))
		default:
			return AnyView(EmptyView())
		}
	}
}




struct TabMenuItem : View {
	var iconSize = Font.body
	var spacing  = 4.0
	var tabIcon = "message"
	var tabTitle = "Message"
	var color = Color.black
	var body : some View {
		VStack(spacing:CGFloat(spacing)) {
			Image(systemName:tabIcon)
				.font(iconSize)
				.foregroundColor(color)
			Text(tabTitle)
				.font(.caption2)
				.foregroundColor(color)
		}
	}
}

struct AddRecordMenu: View {
	@ObservedObject var state : ApplicationState
	var body: some View {
		HStack(spacing:20){
			RoundedNavButton(iconName: "arrow.backward", function:state.moveToPreviousPage)
			TabMenuItem(tabIcon:"plus",tabTitle: "Add Record")
		}
	}
}

struct DirectionalButtons: View {
	@ObservedObject var state : ApplicationState
	var body: some View {
		HStack(spacing:20){
			RoundedNavButton(iconName: "arrow.backward", function:state.moveToPreviousPage)
			RoundedNavButton(iconName: "arrow.forward", function:state.moveToNextPage)
		}
	}
	func get(){
		
	}
}

struct RoundedNavButton: View {
	var iconName  = "arrow.forward"
	var function : () -> Void
	var body: some View {
		Button(action:{self.function()}){
			ZStack{
				Circle()
					.stroke()
					.foregroundColor(.transGreen)
					.frame(width:40, height:40)
					.shadow(radius: 1 )
				Image(systemName: iconName)
					.font(.title2)
					.foregroundColor(.transGreen)
			}
		}.padding(.top,10)
	}
}

class Menus {
	static var MAIN_MENU = "MAIN_MENU"
	static var FORWARD = "FORWARD"
	static var BACKWARD = "BACKWARD"
	static var FORWARD_AND_BACK = "FORWARD_AND_BACK"
	static var ADD_RECORD = "ADD_RECORD"
	
}


struct MainMenuUI: View {
	@ObservedObject var state : ApplicationState
	var body: some View {
		HStack(alignment:.center, spacing:16){
			Button(
				action:{
					state.CURRENT_PAGE = Pages.PERSONAL_INFO
				}
			){
				TabMenuItem(iconSize:Font.title2, spacing:4.0, tabIcon: "plus", tabTitle: "Create", color:.black)
			}
			
			Button(
				action:{
					print("Dunno What you mean bro")
				}
			){
				TabMenuItem(tabIcon: "gearshape", tabTitle: "Settings", color:.black)
			}
		}.padding(.top,10)
	}
}


//---------------------- PREVIEW AREA --------------------------
struct FloatingBottomNav_Previews: PreviewProvider {
	static var previews: some View {
		FloatingBottomNav().environmentObject(ApplicationState())
	}
}
