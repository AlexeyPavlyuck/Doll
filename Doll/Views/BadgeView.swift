import SwiftUI

class BadgeModel: ObservableObject {
    @Published var count: Int = 0
}

struct BadgeView: View {
    @ObservedObject var model: BadgeModel
    
    var body: some View {
        if model.count > 0 {
            ZStack {
                Circle()
                    .fill(Color.red)
                    .frame(width: 16, height: 16)
                
                Text("\(model.count > 99 ? 99 : model.count)")
                    .font(.system(size: 11))
                    .foregroundColor(.white)
            }
        }
    }
}
