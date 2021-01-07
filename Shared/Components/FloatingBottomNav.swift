import SwiftUI

struct FloatingBottomNav: View {
	var body: some View {
		ZStack{
			RoundedRectangle(cornerSize: CGSize(width: 30, height: 210))
				.foregroundColor(.transWhite)
				.shadow(color: .backgroundWhite, radius: 3, x: 6, y: 11)
				.frame(width:250, height:75)
			HStack(alignment:.center, spacing:16){
				TabMenuItem(iconSize:Font.title2, spacing:4.0, tabIcon: "plus", tabTitle: "Create")
				TabMenuItem(tabIcon: "gearshape", tabTitle: "Settings")
			}.padding(.top)
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
struct FloatingBottomNav_Previews: PreviewProvider {
	static var previews: some View {
		FloatingBottomNav()
	}
}
