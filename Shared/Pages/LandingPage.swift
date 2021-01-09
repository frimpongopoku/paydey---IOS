

import SwiftUI

struct LandingPage: View {
	@EnvironmentObject var state : ApplicationState
	@StateObject var anime = AnimationStates()	
//	@State var navShow = false
	var body: some View {
		ZStack{
			//--- Navigation Beginning ----------
			
			NavigationView{
				ZStack{
					NavigationLink("", destination: OldInvoicesDisplayPage(), tag: Pages.OLD_INVOICES, selection: $state.CURRENT_PAGE)
					NavigationLink("", destination:PersonalInfoPage(), tag: Pages.PERSONAL_INFO, selection: $state.CURRENT_PAGE)
						
					NavigationLink("", destination: PayersInfoPage(), tag: Pages.PAYER_INFO, selection: $state.CURRENT_PAGE)
					NavigationLink("", destination: AddRecordsAndGeneratePage(), tag: Pages.ADD_RECORDS, selection: $state.CURRENT_PAGE)

				}
				//-------- Navigation End Wrapper -----
			}
			//---- Bottom Area -------
			VStack{
				Spacer()
				FloatingBottomNav()
					.opacity(anime.showNav ? 1 : 0)
					.offset( y: anime.showNav ? 0 : 10 )
					.scaleEffect()
					.animation(Animation.easeInOut(duration: 0.5))
					.transition(.move(edge: .bottom))
					.onAppear(){
						anime.showNav = true
					}
			}
		}
	}
}

struct LandingPage_Previews: PreviewProvider {
	static var previews: some View {
		LandingPage().environmentObject(ApplicationState())
	}
}
