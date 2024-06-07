//
//  ApiResultView.swift
//  Yummi
//
//  Created by Smith, Oli (AMM) on 07/06/2024.
//

import SwiftUI

struct ApiResultView: View {
    @State var mealDet: [Meals]
    
    var body: some View {
        VStack{
            Text("\(mealDet)")
        }
    }
}

#Preview {
    ApiResultView(mealDet: "")
}
