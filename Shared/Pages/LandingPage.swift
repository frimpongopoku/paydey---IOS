

import SwiftUI

struct LandingPage: View {
	@EnvironmentObject var state : ApplicationState
	var body: some View {
		ZStack{
	
			//--- Navigation Beginning -----
			NavigationView{
				ZStack{
					NavigationLink("", destination: OldInvoicesDisplayPage(), tag: Pages.OLD_INVOICES, selection: $state.CURRENT_PAGE)
					NavigationLink("", destination: PersonalInfoPage(), tag: Pages.PERSONAL_INFO, selection: $state.CURRENT_PAGE)
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
		LandingPage().environmentObject(ApplicationState())
	}
}
