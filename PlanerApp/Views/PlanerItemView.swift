//
//  PlanerItemView.swift
//  PlanerApp
//
//  Created by Simone Panico on 24.08.23.
//

import SwiftUI

struct PlanerItemView: View {
    let item: PlanerItem
    @StateObject var viewModel = PlanerItemViewViewModel()
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.body)
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundColor(Color(.secondaryLabel))
            }
            Spacer()
            
            Button {
                viewModel.toggleIsDone(item: item)
            } label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(Color.blue)
            }

        }
    }
}

struct PlanerItemView_Previews: PreviewProvider {
    static var previews: some View {
        PlanerItemView(item: PlanerItem(id: "123", title: "Helo", dueDate: Date().timeIntervalSince1970, createDate: Date().timeIntervalSince1970, isDone: true))
    }
}
