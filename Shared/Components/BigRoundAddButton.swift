
import SwiftUI

struct BigRoundAddButton: View {
	@ObservedObject var  anime : AnimationStates
	var body: some View {
		ZStack{
			Circle()
				.foregroundColor(.transWhite)
				.frame(width:150, height:150)
				.shadow(color:.glass, radius:10)
			Image(systemName:"plus")
				.font(.system(size:50))
				.foregroundColor(Color.dirtyOrange)
		}.onAppear(){
			anime.animateRoundBtn = true
		}.scaleEffect(anime.ROUND_BTN_SCALE)
		.animation(Animation.easeOut(duration:0.3))
		
		.onDisappear(){
			anime.animateRoundBtn = false
		}
	}
}

struct BigRoundAddButton_Previews: PreviewProvider {
	static var previews: some View {
		BigRoundAddButton(anime: AnimationStates())
	}
}
