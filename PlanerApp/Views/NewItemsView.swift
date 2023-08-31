//
//  NewItemsView.swift
//  PlanerApp
//
//  Created by Simone Panico on 24.08.23.
//

import SwiftUI

struct NewItemsView: View {
    @StateObject var viewModel = NewItemsViewViewModel()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        VStack {
            Text("New Item")
                .bold()
                .font(.system(size: 32))
                .padding()
            
            Form {
                // Title
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                // Due Date
                DatePicker("Due Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                    
                //Button
                ButtonView(background: Color.blue, title: "Save") {
                    if (viewModel.canSave) {
                        viewModel.save()
                        newItemPresented = false
                    } else {
                        viewModel.showAlert = true
                    }
                }
                .padding()
            }
            .alert(isPresented: $viewModel.showAlert) {
                Alert(title: Text("Error"), message: Text("Please fill out all fields"))
            }
        }
    }
}

struct NewItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NewItemsView(newItemPresented: Binding(get: {
            return true
        }, set: { _ in
            // Hello
        }))
    }
}
