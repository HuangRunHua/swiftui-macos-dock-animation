//
//  DockView.swift
//  MacOSDockAnimation
//
//  Created by Runhua Huang on 2022/7/18.
//

import SwiftUI

struct DockView: View {
    
    @EnvironmentObject var dockSettings: DockSettings
    @State private var dockScaled = false
    @State private var dockWidth: CGFloat = 58*CGFloat(DockSettings().apps.count) + 12
    private let gap: CGFloat = 12
    
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            VisualEffectView(material: NSVisualEffectView.Material.contentBackground, blendingMode: NSVisualEffectView.BlendingMode.withinWindow)
                .frame(
                    width: dockWidth,
                    height: gap + 46)
                .cornerRadius(15)
                .opacity(0.5)
            
            HStack(alignment: .bottom, spacing: 0) {
                ForEach($dockSettings.apps) { app in
                    AppIconView(appIcon: app, dockScaled: $dockScaled, dockWidth: $dockWidth)
                        .environmentObject(dockSettings)
                }
            }
            .padding(.trailing, gap)
        }
        .onHover { newValue in
            if !newValue {
                withAnimation(.easeOut(duration: 0.2)) {
                    AppIcon.initializeDock(apps: &dockSettings.apps)
                    self.dockWidth = 58*CGFloat(DockSettings().apps.count) + 12
                }
            }
        }
    }
}

struct DockView_Previews: PreviewProvider {
    static var previews: some View {
        DockView()
            .environmentObject(DockSettings())
    }
}
