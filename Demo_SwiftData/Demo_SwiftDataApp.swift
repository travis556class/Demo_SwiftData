//
//  Demo_SwiftDataApp.swift
//  Demo_SwiftData
//
//  Created by Travis Earl Montgomery on 11/12/25.
//

import SwiftUI
import SwiftData

@main
struct Demo_SwiftDataApp: App {
    var body: some Scene {
        WindowGroup {
            AddBookView()
        }
        .modelContainer(for: Book.self)
    }
    init() {
        print(URL.applicationDirectory.path(percentEncoded: false))
    }
}
