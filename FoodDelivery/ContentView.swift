//
//  ContentView.swift
//  FoodDelivery
//
//  Created by ivo on 2021/10/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List{
                NavigationLink(
                    destination: DetailView(currentCategory: .burger),
                    label: {
                        CategoryView(imageName: "burger", categoryName: "BURGER")
                    })
                NavigationLink(
                    destination: DetailView(currentCategory: .pizza),
                    label: {
                        CategoryView(imageName: "pizza", categoryName: "PIZZA")
                    })
                NavigationLink(
                    destination: DetailView(currentCategory: .pasta),
                    label: {
                        CategoryView(imageName: "pasta", categoryName: "PASTA")
                    })
                NavigationLink(
                    destination: DetailView(currentCategory: .dessert),
                    label: {
                        CategoryView(imageName: "dessert", categoryName: "DESSERT")
                    })
            }.navigationBarTitle(Text("Food Delivery"), displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CategoryView: View {
    var imageName: String
    var categoryName: String
    var body: some View {
        HStack{
            Spacer()
            ZStack{
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 150)
                    .clipped()
                    .cornerRadius(20.0)
                Text(categoryName)
                    .font(.custom("HelevaticaNeue-Medium", size: 50))
                    .foregroundColor(.white)
            }
            Spacer()
        }
        .padding(.top, 5)
        .padding(.bottom, 5)
    }
}
