
import SwiftUI

struct PersonalInfoPage: View {
	@ObservedObject var anime  =  AnimationStates()
	var body: some View {
		ZStack{
			Color.appColorGradient
			VStack(alignment:.leading){
				Text("PERSONAL INFO")
					.font(.title)
					.fontWeight(.semibold)
					.padding(.leading)
				ScrollView{
					LogoView()
						.frame(height:200)
						.padding([.leading,.trailing])
					PersonalInfoForm()
					
				}
			}
		}.offset(x:  anime.PI_X_OFFSET)
		.animation(.easeOut(duration:0.3))
		.onAppear(){
			anime.animatePersonalInfoPage = true
		}
		.onDisappear(){
			anime.animatePersonalInfoPage = false
		}
		.navigationBarHidden(true)
	}
}

//-------- Entire Form Component -----------
struct PersonalInfoForm : View {
	@State var text : String = ""
	var body : some View {
		VStack(alignment:.leading){
			//			ScrollView{
			TextBoxComponent( placeholder: "Your name...", text: $text)
			TextBoxComponent( labelName: "Your company name(Optional)", placeholder: "Company Name...", text: $text)
			Spacer()
				.frame(height:100)
			TextBoxComponent( labelName:"Means Of Payment", placeholder: "Payment Method...", text: $text)
			TextBoxComponent( labelName: "Currency", placeholder: "Ghana Cedi - GHS", text: $text)
			
			//			}
		}.padding([.trailing,.leading])
	}
}




//----- Logo Adding Component ---------
struct LogoView : View {
	var imageName = ""
	var body : some View {
		ZStack{
			TransparentCard(widthRoundness:20, heightRoundness: 20, rounded:true, shadowColor: .glass)
				.frame(maxWidth:.infinity,maxHeight:200)
				.padding([.top,.bottom],10)
			
			if( imageName == ""){
				VStack{
					Image(systemName:"plus")
						.font(.system(size:50))
						.foregroundColor(.titleBlack)
					
					Text("Add A Logo To Your Invoice")
						.foregroundColor(.titleBlack)
						.fontWeight(.semibold)
						.font(.caption)
						.padding(.top)
					
				}
			}
		}
	}
}
struct PersonalInfoPage_Previews: PreviewProvider {
	static var previews: some View {
		PersonalInfoPage()
	}
}
