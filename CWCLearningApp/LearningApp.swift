//
//  CWCLearningAppApp.swift
//  CWCLearningApp
//
//  Created by Lucas Robbins on 9/14/22.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
