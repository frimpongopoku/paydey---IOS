
import SwiftUI

struct PayersInfoPage: View {
	@State var text : String = ""
	var body: some View {
		ZStack{
			Color.appColorGradient
			VStack(alignment:.leading){
				Text("PAYER'S INFORMATION")
					.font(.title)
					.fontWeight(.semibold)
					.padding(.leading,10)
				
				ScrollView{
					TextBoxComponent(labelName:"Person Or Company Name", placeholder:"Payer's name...",text: $text)
					TextBoxComponent(labelName:"Project Name", placeholder:"Project you worked on...",text: $text)
					TextBoxComponent(labelName:"Extra Notes (Optional)", placeholder:"Note...",text: $text, multi: true, height:100)
					
					Spacer()
						.frame(height:150)
					Divider()
					TextBoxComponent(labelName:"Invoice Number (Auto-generated)", placeholder:"invoice-2329",text: $text)
					
					TextBoxComponent(labelName:"Due Date", placeholder:"22nd March 2000",text: $text)
					
				}
			}.padding([.leading,.trailing])
		}.navigationBarHidden(true)
		//		.navigationBarItems(
		//			leading:
		//				Text("PAYER's INFORMATION")
		//				.font(.title2)
		//				.fontWeight(.semibold)
		//		)
		//		.navigationBarBackButtonHidden(true)
	}
}

struct PayersInfoPage_Previews: PreviewProvider {
	static var previews: some View {
		PayersInfoPage()
	}
}
