

import SwiftUI

struct LandingPage: View {
	var body: some View {
		ZStack{
			
			VStack{
				//--- Navigation Beginning -----
				NavigationView{
					ZStack{
						Color.appColorGradient
						VStack{
							InvoiceListDisplay()
						}.navigationTitle("PAYDEY")
					}.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
				}
				//-------- Navigation End Wrapper -----
			}
			//---- Bottom Area -------
			VStack{
				Spacer()
				FloatingBottomNav()
			}
		}
	}
}

struct LandingPage_Previews: PreviewProvider {
	static var previews: some View {
		LandingPage()
	}
}
