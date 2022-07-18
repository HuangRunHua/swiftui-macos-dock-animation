//
//  ContentView.swift
//  MacOSDockAnimation
//
//  Created by Runhua Huang on 2022/7/18.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var dockSettings: DockSettings
    
    var body: some View {
        ZStack(alignment: .bottom) {
            BackgroundView()
                .frame(width: 1024, height: 400)
            
            DockView()
                .padding()
                .environmentObject(dockSettings)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DockSettings())
    }
}
