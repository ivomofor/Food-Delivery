//
//  OderForm.swift
//  FoodDelivery
//
//  Created by ivo on 2021/10/06.
//

import SwiftUI

struct OderForm: View {
    @State var specialRequests = false
    @State var specialRequestContent = ""
    @State var orderAmount = 1
    @State var firstName = ""
    @State var lastName = ""
    @State var streetAddress = ""
    @State var city = ""
    @State var zip = ""
    @State var userFeedback = 0.0
    
    @Binding var showOderSheet: Bool
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Toggle(isOn: $specialRequests, label: {
                        Text("Any special requests?")
                    })
                    if specialRequests {
                        TextField("Enter your wishes", text: $specialRequestContent)
                    }
                    Stepper(value: $orderAmount, in: 1...10,label: {
                        Text("Number of items: \(orderAmount)")
                    })
                }
                Section {
                    TextField("First name", text: $firstName)
                    TextField("Last name", text:$lastName)
                    TextField("Street address", text:$streetAddress)
                    TextField("City", text:$city)
                    TextField("Zip", text:$zip)
                }
                Section {
                    VStack {
                        Text("How happy were you with the user experience?")
                            .padding(.top, 10)
                        HStack {
                            Image(systemName: "hand.thumbsdown")
                                .resizable()
                                .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Slider(value: $userFeedback, in:0.0...10.0)
                            Image(systemName: "hand.thumbsup")
                                .resizable()
                                .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }
                    }
                }
                Section {
                    Button(action: {print("Placed")}, label: {
                        Text("Place order")
                    })
                }
            }.navigationBarTitle(Text("Welcome"))
            .navigationBarItems(leading: Button(action: {self.showOderSheet = false}, label: {
                Text("Cancel")
            }))
        }
    }
}

struct OderForm_Previews: PreviewProvider {
    static var previews: some View {
        OderForm(showOderSheet: .constant(false))
    }
}
