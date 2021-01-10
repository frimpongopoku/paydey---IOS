

import SwiftUI

struct LandingPage: View {
	@EnvironmentObject var state : ApplicationState
	@StateObject var anime = AnimationStates()	
	var body: some View {
		ZStack{
			//--- Navigation Beginning ----------
			
			NavigationView{
				ZStack{
					NavigationLink("", destination: OldInvoicesDisplayPage(state:state,anime:anime), tag: Pages.OLD_INVOICES, selection: $state.CURRENT_PAGE)
					NavigationLink("", destination:PersonalInfoPage(anime: anime), tag: Pages.PERSONAL_INFO, selection: $state.CURRENT_PAGE)
						
					NavigationLink("", destination: PayersInfoPage(anime:anime), tag: Pages.PAYER_INFO, selection: $state.CURRENT_PAGE)
					NavigationLink("", destination: AddRecordsAndGeneratePage(anime:anime), tag: Pages.ADD_RECORDS, selection: $state.CURRENT_PAGE)

				}
				//-------- Navigation End Wrapper -----
			}
			//---- Bottom Area -------
			VStack{
				Spacer()
				FloatingBottomNav(anime: anime)
					.opacity(anime.showNav ? 1 : 0)
					.offset( y: anime.showNav ? 0 : 10 )
					.scaleEffect()
					.animation(Animation.easeInOut(duration: 0.5))
					.transition(.move(edge: .bottom))
					.onAppear(){
						anime.showNav = true
					}
			}
		}.sheet(isPresented: $state.showRecordSheet){
			RecordingSheet(state:state)
			
		}
	}
}

struct LandingPage_Previews: PreviewProvider {
	static var previews: some View {
		LandingPage().environmentObject(ApplicationState())
	}
}
