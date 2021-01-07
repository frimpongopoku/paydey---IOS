

import SwiftUI

struct LandingPage: View {
	@EnvironmentObject var state : ApplicationState
	var body: some View {
		ZStack{
			//--- Navigation Beginning -----
			NavigationView{
				NavigationLink("", destination: OldInvoicesDisplayPage(), tag: Pages.OLD_INVOICES, selection: $state.CURRENT_PAGE)
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
