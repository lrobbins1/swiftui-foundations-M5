//
//  TestView.swift
//  CWCLearningApp
//
//  Created by Lucas Robbins on 10/11/22.
//

import SwiftUI

struct TestView: View {
    
    @EnvironmentObject var model:ContentModel
    
    var body: some View {
        
        if model.currentQuestion != nil {
            
            VStack {
                //Question number
                Text ("Question \(model.currentQuestionIndex + 1) of \(model.currentModule?.test.questions.count ?? 0)")
                
                //Question
                CodeTextView()
                //Answers
                
                //Button
                }
            .navigationBarTitle("\(model.currentModule?.category ?? "") Test")
            }
        else {
            //Test hasnt loaded yet
            ProgressView()
        }
        }
    }

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}