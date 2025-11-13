//
//  ContentView.swift
//  Demo_SwiftData
//
//  Created by Travis Earl Montgomery on 11/12/25.
//

import SwiftUI

struct ContentView: View {
    // MARK - Properties
    @State private var title = ""
    @State private var author = ""
    @State private var bookYear = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Enter a new Book")
                    .font(.largeTitle)
                    .foregroundStyle(.orange)
                    .padding()
                
                HStack {
                    Text("Book Title: ")
                        .font(.headline)
                        .padding(5)
                    TextField("Enter a Title", text: $title)
                        .textFieldStyle(.roundedBorder)
                }
                
                HStack {
                    Text("Book Author: ")
                        .font(.headline)
                        .padding(5)
                    TextField("Author of Book", text: $author)
                        .textFieldStyle(.roundedBorder)
                }
                
                HStack {
                    Text("Publication Year: ")
                        .font(.headline)
                        .padding(5)
                    TextField("Author of Book", text: $bookYear)
                        .textFieldStyle(.roundedBorder)
                }
                
                Spacer()
                
                HStack {
                    Button("Add Book") {
                        let book: Book
                        
                        if let bookYear = Int(bookYear) {
                            //success
                            book = Book(title: title, author: author, year: bookYear)
                        } else {
                            book = Book(title: title, author: author, year: 0)
                        }
                    }
                    .bold()
                    .buttonStyle(.borderedProminent)
                }
                
                //modelContext.insert(book)
            }
        }
    }
}

#Preview {
    ContentView()
}
