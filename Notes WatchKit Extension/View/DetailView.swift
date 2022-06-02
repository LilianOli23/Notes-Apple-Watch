//
//  DetailView.swift
//  Notes WatchKit Extension
//
//  Created by Lilian De Oliveira Silva on 01/06/22.
//

import SwiftUI

struct DetailView: View {
    // MARK: - PROPERTY
    
    let note: Note
    let count: Int
    let index: Int
    
    @State private var isCreditPresented: Bool = false
    @State private var isSettingsPresented: Bool = false
    
    // MARK: - BODY

    var body: some View {
        VStack(alignment: .center, spacing: 3) {
            // HEADER
            HeaderView(title: "")
            
            // CONTENT
            Spacer()
            
            ScrollView(.vertical) {
                Text(note.text)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }
            
            Spacer()
            
            // FOOTER
            HStack(alignment: .center) {
                Image(systemName: "gear")
                    .imageScale(.large)
                    .onTapGesture {
                        isSettingsPresented.toggle()
                    }
                    .sheet(isPresented: $isSettingsPresented, content: {
                        SettingsView()
                    })
                
            
                Spacer()
                
                Text("\(count) / \(index + 1)")
                
                Spacer()
                
                Image(systemName: "info.circle")
                    .imageScale(.large)
                    .onTapGesture {
                        isCreditPresented.toggle()
                    }
                    .sheet(isPresented: $isCreditPresented, content: {
                        CreditsView()
                    })
                
            }//: HSTACK
            .foregroundColor(.secondary)
            
        }//: VSTACK
        .padding(3)
    }
}
// MARK: - PREVIEW

struct DetailView_Previews: PreviewProvider {
    
    static var sampleData: Note = Note(id: UUID(), text: "Hello, world!")
    
    static var previews: some View {
        DetailView(note: sampleData, count: 5, index: 1)
        
    }
}
