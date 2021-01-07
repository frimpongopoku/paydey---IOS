
import SwiftUI

struct SplashScreen: View {
	var body: some View {
		ZStack{
			Color.appColorGradient
			VStack{
				Spacer()
				Image("paydey_icon")
					.resizable()
					.scaledToFit()
					.frame(width:200, height:200)
				Text("PAYDEY")
					.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
					.font(.largeTitle)
					.foregroundColor(Color.logoOrange)
					.shadow(radius: 2)
				
				Spacer()
				Text("Made for freelancers, free for all")
					.foregroundColor(Color.titleBlack)
					.padding()
					.padding(.bottom,20)
					.shadow(radius: 10 )
					
			}
			
		}.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
		
	}
}

struct SplashScreen_Previews: PreviewProvider {
	static var previews: some View {
		SplashScreen()
	}
}
