import SwiftUI

struct FloatingBottomNav: View {
	var menuType = Menus.MAIN_MENU
	var body: some View {
		ZStack{
			RoundedRectangle(cornerSize: CGSize(width: 30, height: 210))
				.foregroundColor(.transWhite)
				.shadow(color: .backgroundWhite, radius: 3, x: 6, y: 11)
				.frame(width:250, height:75)
			self.getMenuInterface(menuType: menuType)
		}
	}
	
	func getMenuInterface( menuType: String) ->  some View {
		switch menuType {
		case Menus.MAIN_MENU:
			return AnyView(MainMenuUI())
		case Menus.FORWARD:
			return AnyView(RoundedNavButton(iconName: "arrow.forward"))
		case Menus.BACKWARD:
			return AnyView(RoundedNavButton(iconName: "arrow.backward"))
		case Menus.FORWARD_AND_BACK:
			return AnyView(DirectionalButtons())
		case Menus.ADD_RECORD:
			return AnyView(AddRecordMenu())
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
	var body : some View {
		VStack(spacing:CGFloat(spacing)) {
			Image(systemName:tabIcon)
				.font(iconSize)
			Text(tabTitle)
				.font(.caption2)
		}
	}
}

struct AddRecordMenu: View {
	var body: some View {
		HStack(spacing:20){
			RoundedNavButton(iconName: "arrow.backward")
			TabMenuItem(tabIcon:"plus",tabTitle: "Add Record")
		}
	}
}

struct DirectionalButtons: View {
	var body: some View {
		HStack(spacing:20){
			RoundedNavButton(iconName: "arrow.backward")
			RoundedNavButton(iconName: "arrow.forward")
		}
	}
}

struct RoundedNavButton: View {
	var iconName  = "arrow.forward"
	var body: some View {
		Button(action:{}){
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
	var body: some View {
		HStack(alignment:.center, spacing:16){
			TabMenuItem(iconSize:Font.title2, spacing:4.0, tabIcon: "plus", tabTitle: "Create")
			TabMenuItem(tabIcon: "gearshape", tabTitle: "Settings")
		}.padding(.top,10)
	}
}


//---------------------- PREVIEW AREA --------------------------
struct FloatingBottomNav_Previews: PreviewProvider {
	static var previews: some View {
		FloatingBottomNav()
	}
}
