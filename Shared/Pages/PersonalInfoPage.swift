
import SwiftUI

struct PersonalInfoPage: View {
	var body: some View {
		ZStack{
			Color.appColorGradientCenteredThick
			VStack{
				LogoView()
				Spacer()
				PersonalInfoForm()
				Spacer()
			}
		}.navigationBarBackButtonHidden(true)
	}
}

//-------- Entire Form Component -----------
struct PersonalInfoForm : View {
	
	var body : some View {
		VStack(alignment:.leading){
			ScrollView{
				TextBoxComponent()
					.padding()
			}
		}
	}
}


struct TextBoxComponent : View {
	@State var name : String = ""
	var body : some View {
		VStack(alignment:.leading){
			Text("Name")
				.font(.caption2)
				.foregroundColor(.titleBlack)
			TransparentCard(rounded:false, shadowColor:.glass)
				.frame(height:50)
				.overlay(
					TextField("Your name...", text: $name)
						.padding()
				)
		}
	}
}

//----- Logo Adding Component ---------
struct LogoView : View {
	var imageName = ""
	var body : some View {
		ZStack{
			TransparentCard(widthRoundness:20, heightRoundness: 20, rounded:true, shadowColor: .glass)
				.frame(maxWidth:.infinity,maxHeight:150)
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
