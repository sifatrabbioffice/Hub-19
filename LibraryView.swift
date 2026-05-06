struct LibraryView: View {
    @State private var selectedEnv = "DirectX 11"
    let environments = ["DirectX 9", "DirectX 11", "DirectX 12 (Vulkan)", "OpenGL"]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Game Injection")) {
                    Button("Add New .exe Game") {
                        // Logic to open iOS File Picker
                    }
                }
                
                Section(header: Text("Engine Settings")) {
                    Picker("Graphics API", selection: $selectedEnv) {
                        ForEach(environments, id: \.self) { Text($0) }
                    }
                    Toggle("Enable C++ Redist 2022", isOn: .constant(true))
                    Toggle("DirectSound Virtualization", isOn: .constant(true))
                }
                
                Section(header: Text("Connected Library")) {
                    Text("Cyberpunk 2077 (Ready)").foregroundColor(.green)
                    Text("Elden Ring (Requires DX12)").foregroundColor(.orange)
                }
            }
            .navigationTitle("GameHub Library")
        }
    }
}
