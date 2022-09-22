//
//  ContentView.swift
//  CW7extra
//
//  Created by Fatima Garashi on 21/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var image = Image(systemName: "plus.circle")
    @State var isTapped = false
    @State var major = ""
    @State var isSelected = false


    
//    let majors = ["هندسة كمبيوتر","طب بشري","فيزياء"]
    
    var body: some View {
        VStack{
            
            HStack{
                
                
                image
                    .font(.system(size: 30))
                    .foregroundColor(isTapped ? .red : .green)
                    .onTapGesture {
                        withAnimation(.easeIn(duration: 0.5)){
                            isTapped.toggle()
                        }
                    
                        
                        image = isTapped ? Image(systemName: "minus.circle") : Image(systemName: "plus.circle")
                    }
                Text("اختر تخصصك")
                    .font(.system(size: 25))
                
            }
            
//            List(majors, id: \.self){  major in
//                Text(major)
//
//            }
          
                
            
                
            VStack{
                Majors(isTapped: isTapped, text: "هندسة كمبيوتر",index: 0, major: $major)
                    .frame(width: 200, height: 50)
                    .background(major == "هندسة كمبيوتر" ? .pink: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.567, saturation: 0.25, brightness: 0.903)/*@END_MENU_TOKEN@*/)
                    .cornerRadius(10)
                Majors(isTapped: isTapped, text: "فيزياء",index: 1, major: $major)
                .frame(width: 200, height: 50)
                .background(major == "فيزياء" ? .pink: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.567, saturation: 0.25, brightness: 0.903)/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
            
            Majors(isTapped: isTapped, text: "طب بشري", index: 2, major: $major)
                .frame(width: 200, height: 50)
                .background(major == "طب بشري" ? .pink: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.567, saturation: 0.25, brightness: 0.903)/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
            Majors(isTapped: isTapped, text: "تخصص أخر", index: 3, major: $major)
                .frame(width: 200, height: 50)
                .background(major == "تخصص أخر" ? .pink: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.567, saturation: 0.25, brightness: 0.903)/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
                    
            Text(isTapped ? "تخصصك هو : \(major)" : "")
                
            }.opacity(isTapped ? 1 : 0)
                
                
            
 
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView( )
    }
}

struct Majors: View {
    var isTapped : Bool
    @State var text = ""
    @State var index : Int
    @Binding var major : String

    var body: some View {
        
            Text(text)
                .foregroundColor(.white)
                .frame(width: 200, height: 50)
//                .background(isTapped ? /*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.567, saturation: 0.25, brightness: 0.903)/*@END_MENU_TOKEN@*/: .white)
//                .cornerRadius(10)
                .onTapGesture {
                  major = text
                }
        
        
//        if isTapped && !isSelected{
//            Text(text)
//                .foregroundColor(.white)
//                .frame(width: 200, height: 50)
//                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.567, saturation: 0.25, brightness: 0.903)/*@END_MENU_TOKEN@*/)
//                .cornerRadius(10)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
//        }else if isTapped && isSelected{
//            Text(text)
//                .foregroundColor(.white)
//                .frame(width: 200, height: 50)
//                .background( .pink)
//                .cornerRadius(10)
//                .onTapGesture {
//                isSelected.toggle()
//
//                }
//        }else{
//            Text(text)
//                .foregroundColor(.white)
//                .frame(width: 200, height: 50)
//                .background( .white)
//                .cornerRadius(10)
//                .onTapGesture {
//                isSelected.toggle()
//
//                }
//        }
        
    }
}
