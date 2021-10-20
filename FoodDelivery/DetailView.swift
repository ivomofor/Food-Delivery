//
//  DetailView.swift
//  FoodDelivery
//
//  Created by ivo on 2021/10/04.
//

import SwiftUI

struct DetailView: View {
    @State var showOderSheet = false
    var currentCategory: Categories
    var body: some View {
        List(filterData(by: currentCategory)){ food in
            DetailRow(showOderSheet: self.$showOderSheet,food: food)
        }.navigationBarTitle(Text(categorystring(for: currentCategory)), displayMode: .inline)
        .sheet(isPresented: $showOderSheet, content: {
            OderForm(showOderSheet: self.$showOderSheet)
        })
    }
}

#if DEBUG
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(currentCategory: .burger)
    }
}
#endif
