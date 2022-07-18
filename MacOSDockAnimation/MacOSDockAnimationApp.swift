//
//  MacOSDockAnimationApp.swift
//  MacOSDockAnimation
//
//  Created by Runhua Huang on 2022/7/18.
//

import SwiftUI

@main
struct MacOSDockAnimationApp: App {
    
    @StateObject var dockSetting = DockSettings()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(dockSetting)
        }
    }
}
