import SwiftUI

struct ProfileSection: View {
	 @Environment(\.colorScheme) private var colorScheme
	 var body: some View {
			HStack(spacing: 16) {
				 Image(.frontend)
						.resizable()
						.scaledToFill()
						.frame(width: 55, height: 55)
						.clipShape(Circle()) 
				 VStack(alignment: .leading, spacing: 4) {
						Text("Khanh Nguyen")
							 .font(.system(size: 25, weight: .medium))
							 .foregroundStyle(colorScheme == .dark ? .gray : .black)

						Text("14 UTR • Joined Mar 2022")
							 .font(.subheadline)
							 .foregroundColor(.gray)
				 }

				 Spacer()
			}
			.padding(.horizontal, .paddingJumbo)
	 }
}

#Preview {
	 ProfileSection()
			.padding()
}
