

import SwiftUI

struct OldInvoicesDisplayPage: View {
	@ObservedObject var anime  = AnimationStates()
	var body: some View {
		ZStack{
			Color.appColorGradientCenteredThick
			VStack(alignment:.leading){
				Text("PAYDEY")
					.font(.title)
					.fontWeight(.semibold)
					.padding(.leading)
				Spacer()
				VStack{
					Text("Start creating your invoices")
						.font(.subheadline)
						.foregroundColor(.titleBlack)
						.padding(.bottom,40)
					BigRoundAddButton(anime: anime)
					
				}
				Spacer()
				
				//InvoiceListDisplay()
			}.navigationBarHidden(true)
			
			
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
		OldInvoicesDisplayPage()
	}
}
