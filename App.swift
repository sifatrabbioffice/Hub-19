import SwiftUI

@main
struct GameHubApp: App {
    var body: some Scene {
        WindowGroup {
            MainContainer()
        }
    }
}

struct MainContainer: View {
    @State private var showLibrary = false
    
    var body: some View {
        if showLibrary {
            LibraryView()
        } else {
            WelcomeView(onStart: { showLibrary = true })
        }
    }
}

// 1st Page: Welcome Screen
struct WelcomeView: View {
    var onStart: () -> Void
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack(spacing: 20) {
                Text("GAMEHUB PRO")
                    .font(.system(size: 48, weight: .black, design: .monospaced))
                    .foregroundStyle(LinearGradient(colors: [.blue, .purple], startPoint: .top, endPoint: .bottom))
                
                Text("iPhone 15 Pro Max - Hardware Accelerated")
                    .font(.caption)
                    .foregroundColor(.gray)
                
                Button(action: onStart) {
                    Text("ENTER CONSOLE")
                        .fontWeight(.bold)
                        .padding()
                        .frame(width: 250)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
            }
        }
    }
}
