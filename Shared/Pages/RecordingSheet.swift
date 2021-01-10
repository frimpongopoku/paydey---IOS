
import SwiftUI

struct RecordingSheet: View {
	@ObservedObject var state : ApplicationState
	@State var text = ""
	var body: some View {
		ZStack{
			Color.appColorGradient.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
			VStack(alignment:.leading){
				HStack {
					Text("Add Invoice Items To List")
						.font(.title2)
						.fontWeight(.semibold)
						.padding([.leading,.top])

					Spacer()
					Button(action:{ state.showRecordSheet = false}){
						Image(systemName:"xmark.circle.fill")
							.font(.title2)
							.padding([.trailing,.top])
							.foregroundColor(.titleBlack)
					}
				}
				Form{
					
					Section(header:Text("What items should be paid for?").fontWeight(.semibold)){
						TextField("Quantity", text: $text)
							.keyboardType(.numberPad)
						TextField("Unit Price", text: $text)
							.keyboardType(.numberPad)
						Text("Bried Description")
							.foregroundColor(.gray)
						TextEditor(text: $text)
							.frame(height:120)
						
						Button(action:{}){
							Text("Save Record")
						}
					}
				}.font(.system(size:14))
				
				
				
			}
			
			VStack{
				SavedNotification()
					.padding(.top,150)
			}
		}
	}
}

struct RecordingSheet_Previews: PreviewProvider {
	static var previews: some View {
		RecordingSheet(state: ApplicationState())
	}
}

struct SavedNotification: View {
	var body: some View {
		HStack{
			Text("Saved")
				.font(.title2)
				.foregroundColor(.transGreen)
			Circle()
				.frame(width:40, height:40)
				.foregroundColor(Color.transGreen)
				.overlay(
					Image(systemName:"checkmark")
						.font(.title2)
						.foregroundColor(.white)
				)
		}.frame(maxWidth:.infinity)
	}
}
