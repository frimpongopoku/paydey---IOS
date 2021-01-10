import SwiftUI

struct FloatingBottomNav: View {
	@EnvironmentObject var appState : ApplicationState
	@ObservedObject var anime : AnimationStates
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
			return AnyView(DirectionalButtons(state: appState, anime: anime))
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
	@State var show = false
	var body: some View {
		HStack(spacing:20){
			RoundedNavButton(iconName: "arrow.backward", function:state.moveToPreviousPage)
				.onAppear(){
					show = true
				}.scaleEffect(show ? 1 : 0.2)
				.animation(Animation.easeOut(duration:0.2))
				.onDisappear(){
					show = false
				}
			TabMenuItem(tabIcon:"plus",tabTitle: "Add Record")
				.onAppear(){
					show = true
				}.scaleEffect(show ? 1 : 0.2)
				.animation(Animation.easeOut(duration:0.2).delay(0.1))
				.onDisappear(){
					show = false
				}
		}
	}
}

struct DirectionalButtons: View {
	@ObservedObject var state : ApplicationState
	@ObservedObject var anime : AnimationStates
	@State var show  = false
	var body: some View {
		HStack(spacing:20){
			RoundedNavButton(iconName: "arrow.backward", function: self.goBack)
				.onAppear(){
					show = true
				}.scaleEffect(show ? 1 : 0.2)
				.animation(.easeOut(duration:0.2))
				.onDisappear(){
					show = false
				}
			RoundedNavButton(iconName: "arrow.forward", function:self.goForward)
				.onAppear(){
					show = true
				}.scaleEffect(show ? 1 : 0.2)
				.animation(Animation.easeOut(duration:0.2).delay(0.1))
				.onDisappear(){
					show = false
				}
		}
	}
	func goForward(){
		anime.ANIME_DIRECTION_INDEX = -1;
		state.moveToNextPage()
	}
	
	func goBack(){
		anime.ANIME_DIRECTION_INDEX = 1;
		state.moveToPreviousPage()
	}
}

struct RoundedNavButton: View {
	var iconName  = "arrow.forward"
	var function : () -> Void
	var body: some View {
		Button(action:{
			withAnimation{
				self.function()
			}
			
		}){
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
	@State var show = false
	var body: some View {
		HStack(alignment:.center, spacing:16){
			Button(
				action:{
					state.CURRENT_PAGE = Pages.PERSONAL_INFO
				}
			){
				TabMenuItem(iconSize:Font.title2, spacing:4.0, tabIcon: "plus", tabTitle: "Create", color:.black)
			}	.onAppear(){
				show = true
			}.scaleEffect(show ? 1 : 0.2)
			.animation(Animation.easeOut(duration:0.2))
			.onDisappear(){
				show = false
			}
			
			Button(
				action:{
					print("Dunno What you mean bro")
				}
			){
				TabMenuItem(tabIcon: "gearshape", tabTitle: "Settings", color:.black)
			}
			.onAppear(){
				show = true
			}.scaleEffect(show ? 1 : 0.2)
			.animation(Animation.easeOut(duration:0.2).delay(0.1))
			.onDisappear(){
				show = false
			}
		}.padding(.top,10)
	}
}


//---------------------- PREVIEW AREA --------------------------
struct FloatingBottomNav_Previews: PreviewProvider {
	static var previews: some View {
		FloatingBottomNav(anime:AnimationStates()).environmentObject(ApplicationState())
	}
}
