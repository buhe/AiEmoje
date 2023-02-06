//
//  ContentView.swift
//  AiEmoj
//
//  Created by 顾艳华 on 2023/2/5.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State var prompt = ""
    @State var result = ""
    
    var body: some View {
        NavigationView {
            Form {
                VStack(alignment: .leading){
                    Text("🍾")
                        .font(.system(size: 96))
                    Text("Generate multiple emojis at once")
                    Text("Copy and immediately use in your favorite apps!")
                }
 
                Section(header: Text("prompt")){
                    TextField("prompt", text: $prompt)
                }
                Section(header: Text("result")){
                    Text(result)
                }
                HStack {
                    Button {
                        
                    }label: {
                        Text("Find")
                    }
                    .padding(.trailing)
                    
                    Button {
                        
                    }label: {
                        Image(systemName: "doc.on.doc")
                    }
                }
            }.toolbar {
                Button {
                    
                }label: {
                    Image(systemName: "gear")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
