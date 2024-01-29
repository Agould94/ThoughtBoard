//
//  CheckableItemView.swift
//  ThoughtBoard
//
//  Created by Alexander Gould on 1/28/24.
//

import Foundation
import SwiftUI

struct CheckableItemView: View{
    var title:String
    @Binding var isSelected:Bool
    
    var body:some View{
        Button(action:{
            self.isSelected.toggle()
        }){
            HStack{
                Spacer()
                Text(title)
                    .foregroundColor(isSelected ? .black : .gray)
                Spacer()
            }
            .padding()
            .background(isSelected ? Color(white: 0.9) : Color.white)
            .cornerRadius(8)
        }
        .overlay(
            RoundedRectangle(cornerRadius:8)
                .stroke(Color.gray, lineWidth:0.5)
        )
    }
}
