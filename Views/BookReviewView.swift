//
//  BookReviewView.swift
//  BookTracker
//
//  Created by Lubelihle Ndlovu on 2025/06/01.
//

import SwiftUI

struct BookReviewView: View {
    let book: Book

    var body: some View {
        VStack(spacing: 20) {
            Image(book.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250, height: 400)
                .clipShape(Rectangle())
                .overlay(Rectangle().stroke(Color.gray, lineWidth: 1))
                .shadow(radius: 1)

            Text(book.title)
                .font(.title)
                .bold()
            
            ShareLink(item: URL(string: "https://apps.apple.com/us/app/light-speedometer/id6447198696")!) {
                Label("", systemImage: "bookmark.circle")
                    .foregroundColor(.white)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            
            Button(action: {
                                guard let purchaseURL = URL(string: book.purchaseURL) else {
                                    print("Invalid purchase URL")
                                    return
                                }
                                UIApplication.shared.open(purchaseURL, options: [:], completionHandler: nil)
                            }) {
                                Label("", systemImage: "cart")
                                    .foregroundColor(.white)
                                    .padding(.horizontal, 16)
                                    .padding(.vertical, 8)
                                    .background(Color.blue)
                                    .cornerRadius(8)
                            }
                        
            
            VStack(alignment: .leading, spacing: 10) {
                                bookDetailRow(bookHeading: "Tittle:", bookInformation: book.title)
                                bookDetailRow(bookHeading: "Author:", bookInformation: book.author)
                                bookDetailRow(bookHeading: "Pages:", bookInformation: book.pages)
                                bookDetailRow(bookHeading: "Ratings:", bookInformation: book.ratings)
                
              
            }
            
            .font(.body)
            .padding()
            .background(Color(.gray))
            .cornerRadius(10)

            Spacer()
        }
        .padding()

    }
    @ViewBuilder func bookDetailRow(bookHeading: String, bookInformation: String) -> some View{
        HStack {
            Text(bookHeading)
                .bold()
            Spacer()
            Text(bookInformation)
        }
        
    }
    
}



#Preview {
    BookReviewView(book: Books[0])
}
