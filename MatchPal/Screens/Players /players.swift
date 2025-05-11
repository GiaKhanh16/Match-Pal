import SwiftUI

struct player: View {
	 var body: some View {
			NavigationStack {
				 VStack {
						Text("Hello")
							 .frame(maxWidth: .infinity, alignment: .leading)
							 .font(.system(size: 20, weight: .medium))
							 .foregroundStyle(.secondary)
						Text("Khanh Nguyen")
							 .font(.system(.largeTitle, weight: .bold))
							 .frame(maxWidth: .infinity, alignment: .leading)
							 .clipped()

						Spacer()
				 }
				 .toolbar {
						ToolbarItem(placement: .topBarTrailing) {
							 Button {
									print("something")
							 } label: {
									Image(systemName: "plus.rectangle.portrait.fill")
										 .resizable()
										 .frame(width: 22, height: 28)
										 .padding(.horizontal, 20)
							 }
						}
				 }
				 .padding()
			}
	 }
}

#Preview {
	 player()
}
