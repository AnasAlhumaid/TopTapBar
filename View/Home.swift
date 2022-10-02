//
//  TopTabBar.swift
//  TopTapBar
//
//  Created by Anas Hamad on 10/2/22.
//

import SwiftUI

struct Home: View {
    
    @State var selectedTab: FilterModelView = .all
    @Namespace  var animation
    var body: some View {
        
        
        NavigationView{
            VStack{
            TopTapBar
                Spacer()
            }
            
            
            .navigationTitle("القائمة العلوية")
        }
    }
    
    
    var TopTapBar :some View{
        HStack(spacing:0){
            ForEach(FilterModelView.allCases,id:\.rawValue){ tab in
                
                    VStack {
                        Text(tab.title)
                            .fontWeight(.bold)
                            .foregroundColor(selectedTab ==  tab ? .black : .gray)
                        if selectedTab == tab{
                        Capsule()
                            .foregroundColor(Color.blue)
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "filter", in: animation)
                        }else{
                            Capsule()
                                .foregroundColor(Color.clear)
                                .frame(height: 3)
                              
                        }
                        
                    }
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            self.selectedTab = tab
                        }
                    }
            }
           
        }
        .overlay(Divider().offset(x: 0, y: 16))
        .padding()
}
}

struct TopTabBar_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

