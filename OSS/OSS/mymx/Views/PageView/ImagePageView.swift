//
//  ImagePageView.swift
//  mymx
//
//  Created by ice on 2024/11/23.
//

import Foundation
import SwiftUI

struct ImagePageView<Page: View>: View {
    var pages: [Page]
//    @Binding var enterPage: Int
    @Binding var currentPage: Int
    
    var body: some View {
        ZStack(alignment: .bottom) {
            PageViewController(pages: pages, currentPage: $currentPage)
            
            if(pages.count > 1){
                VStack{
                    Text("\(currentPage + 1) / \(pages.count)")
                        .font(.callout)
                    
                    PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                        .frame(width: CGFloat(pages.count * 18))
                }
                .padding()
            }
        }
        .onAppear(perform: {
        })
    }
}
