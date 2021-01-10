

import SwiftUI

struct OldInvoicesDisplayPage: View {
	@ObservedObject var state : ApplicationState
	@ObservedObject var anime : AnimationStates
	var body: some View {
		ZStack{
			Color.appColorGradientCenteredThick
			VStack(alignment:.leading){
				HStack{
					Text("PAYDEY")
						.font(.title)
						.fontWeight(.semibold)
						.padding(.leading)
					Spacer()
				}.frame(maxWidth:.infinity)
				Spacer()
				VStack{
					Text("Start creating your invoices")
						.font(.subheadline)
						.foregroundColor(.titleBlack)
						.padding(.bottom,40)
					
					Button(action:{
						state.CURRENT_PAGE = Pages.ADD_RECORDS
					}){
						BigRoundAddButton(anime: anime)
					
					}
					
				}.frame(maxWidth:.infinity)
				
				Spacer()
				
				//InvoiceListDisplay()
			}.frame(maxWidth:.infinity)
			.navigationBarHidden(true)
			
			
		}
		
		.offset(x:anime.FP_OFFSET_VALUE)
		.animation(.easeOut(duration:0.2))
		.onAppear(){
			anime.animateFirstPage = true
		}.onDisappear(){
			anime.animateFirstPage = false
		}
		
	}
}

struct OldInvoicesDisplayPage_Previews: PreviewProvider {
	static var previews: some View {
		OldInvoicesDisplayPage(state: ApplicationState(), anime: AnimationStates())
	}
}
