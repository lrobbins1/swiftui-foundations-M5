//
//  TestResultView.swift
//  CWCLearningApp
//
//  Created by Lucas Robbins on 10/20/22.
//

import SwiftUI

struct TestResultView: View {
    
    @EnvironmentObject var model:ContentModel
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Text("Doing Great!")
                .font(.title)
            
            Spacer()
            
            Text ("You got x out of x questions!")
            
            Spacer()
            
            Button  {
                
                //Send user back to HomeView
                model.currentTestSelected = nil
                
            } label: {
                
                ZStack {
                    RectangleCard (color: .green)
                        .frame(height: 48)
                    
                    Text ("Complete")
                        .bold()
                        .foregroundColor(.white)
                }
            }
            Spacer()

        }
    }
}

struct TestResultView_Previews: PreviewProvider {
    static var previews: some View {
        TestResultView()
    }
}
