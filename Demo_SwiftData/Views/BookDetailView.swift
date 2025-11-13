//
//  BookDetailView.swift
//  Demo_SwiftData
//
//  Created by Travis Earl Montgomery on 11/12/25.
//

import SwiftUI
import SwiftData

struct BookDetailView: View {
    @Environment(\.modelContext) var modelContext
    @State var book: Book
    
    var body: some View {
        List {
            Text("Book Title: \(book.title)")
                .font(.headline)
                .padding()
                .listRowSeparator(.hidden)
            
            Text("Book Author: \(book.author)")
                .font(.headline)
                .padding()
                .listRowSeparator(.hidden)
            
            Text("Publication Year: \(String(book.year))")
                .font(.headline)
                .padding()
                .listRowSeparator(.hidden)
        }
    }
}

#Preview {
    BookDetailView(book: Book())
}
