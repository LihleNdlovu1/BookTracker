//  BooksView.swift
//  BookTracker
//
//  Created by Lubelihle Ndlovu on 2025/06/01.
//

import SwiftUI

struct BooksView: View {
    var book = Books
    
    let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(book) { bookInformation in
                        NavigationLink(destination: BookReviewView(book: bookInformation)) {
                            VStack(alignment: .center, spacing: 8) {
                                Image(bookInformation.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 100, height: 140)
                                    .clipShape(Rectangle())
                                    .overlay(Rectangle().stroke(Color.gray, lineWidth: 1))
                                    .shadow(radius: 2)
                                
                                Text(bookInformation.title)
                                    .font(.caption)
                                    .fontWeight(.medium)
                                    .multilineTextAlignment(.center)
                                    .lineLimit(2)
                                    .fixedSize(horizontal: false, vertical: true)
                                    .foregroundColor(.primary)
                            }
                            .padding(.horizontal, 8)
                        }
                    }
                }
                .padding(.horizontal, 16)
            }
            .navigationTitle("Book Library")
        }
    }
}

#Preview {
    BooksView()
}
