//
//  ContentView.swift
//  ToDoListStateManagementSwiftData
//
//  Created by Bekir Geriş on 4.10.2023.
//

import SwiftUI
import SwiftData

struct ContentView: View {

//    @State var counter = 0
//    @State private var darkTheme = DarkTheme()
    @Environment(DarkTheme.self) private var darkTheme
    
    var body: some View {
        VStack {
//            Text(String(counter))
//            MyButton(counter: $counter)
            DarkChoiceToggleView()
            InformationText()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(darkTheme.isEnabled ? .black : .white)
    }
}

@Observable
class DarkTheme {
    
    var isEnabled: Bool = false
}

struct DarkChoice: View {
        
    @Bindable var darkTheme: DarkTheme
    
    var body: some View {
        Toggle(isOn: $darkTheme.isEnabled, label: {
            EmptyView()
        })
        .fixedSize()
    }
}

struct DarkChoiceToggleView: View {
    @Environment(DarkTheme.self) private var darkTheme
    var body: some View {
        DarkChoice(darkTheme: darkTheme)
    }
}

struct InformationText: View {
    
    @Environment(DarkTheme.self) private var darkTheme
    
    var body: some View {
        Text(darkTheme.isEnabled ? "Dark Theme Enabled" : "Dark Theme Not Enabled")
            .font(.title)
            .foregroundStyle(darkTheme.isEnabled ? .white : .black)
    }
}

//struct MyButton: View {
//    
//    @Binding var counter: Int
//    var body: some View {
//        Button(action: {
//            self.counter += 1
//        }, label: {
//            Text("Add")
//        })
//    }
//}

#Preview {
    ContentView()
        .environment(DarkTheme())
}
