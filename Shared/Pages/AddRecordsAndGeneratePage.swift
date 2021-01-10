
import SwiftUI

struct AddRecordsAndGeneratePage: View {
	@ObservedObject var anime : AnimationStates
	var body: some View {
		ZStack{
			Color.appColorGradient
			VStack{
				HStack{
					Text("ADD RECORDS")
					.font(.title2)
					.fontWeight(.semibold)
					Spacer()
					Text("GHS - 65,775.00")
						.font(.title3)
						.fontWeight(.bold)
						.foregroundColor(.normalGreen)
				}.padding([.leading,.trailing,.bottom])
				Button(action:{}){
					Text("DONE, GENERATE INVOICE")
						.font(.caption)
						.foregroundColor(.white)
						.fontWeight(.semibold)
						.padding()
						.frame(maxWidth:.infinity)
						.background(Color.transGreen)
						.cornerRadius(55)
						.shadow(radius: 5)
						.padding([.leading,.trailing],20)
				}.padding(.bottom,10)
				ScrollView(showsIndicators:false){
					HStack{
						
						Text("Description")
							.foregroundColor(.titleBlack)
							.font(.caption)
							.fontWeight(.semibold)
						Spacer()
						Text("Qty")
							.foregroundColor(.titleBlack)
							.font(.caption)
							.fontWeight(.semibold)
						Text("Unit Price")
							.foregroundColor(.titleBlack)
							.font(.caption)
							.fontWeight(.semibold)
						Text("Total Price")
							.foregroundColor(.titleBlack)
							.font(.caption)
							.fontWeight(.semibold)
						
					}.padding([.leading,.trailing],20)
					Divider()
						.background(Color.transWhite)
						.padding([.leading,.trailing],20)
					
					Spacer()
					
					VStack{
						
						ForEach(1...6, id:\.self){ _ in
							InvoiceItemCard()
								.frame(height:70)
								
								.padding([.leading,.trailing])
						}
						
					}
				}
				
			}
		}.navigationBarHidden(true)
		.onAppear(){
			anime.animateAddRecordsPage = true
		}.onDisappear(){
			anime.animateAddRecordsPage	 = false
		}
		.offset(x:  anime.ARP_OFFSET_VALUE)
		.animation(.easeOut(duration:0.3))
		
	}
}



struct InvoiceItemCard : View {
	var body : some View {
		ZStack{
			TransparentCard(
				widthRoundness:10,
				heightRoundness: 10,
				elevation: 2,
				rounded: true,
				xShadow: 3,
				yShadow: 7,
				shadowColor: .glass
			)
				.shadow(radius:5)
				.frame(maxWidth:.infinity,maxHeight: 70)
			
			HStack{
				
				Text("Built your entire webbie")
					.font(.caption)
					.foregroundColor(.titleBlack)
				Spacer()
				Text("3")
					.fontWeight(.semibold)
					.font(.body)
					.foregroundColor(.black)
				Text("10")
					.fontWeight(.bold)
					.font(.body)
					.foregroundColor(.dirtyOrange)
				Text("99")
					.fontWeight(.bold)
					.font(.body)
					.foregroundColor(.normalGreen)
				
			}.padding(.top,7)
			.padding([.leading,.trailing])
			
		}
	}
}
struct AddRecordsAndGeneratePage_Previews: PreviewProvider {
	static var previews: some View {
		AddRecordsAndGeneratePage(anime: AnimationStates())
	}
}
