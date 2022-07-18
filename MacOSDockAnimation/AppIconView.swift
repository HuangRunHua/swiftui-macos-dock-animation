//
//  AppIconView.swift
//  MacOSDockAnimation
//
//  Created by Runhua Huang on 2022/7/18.
//

import SwiftUI

struct AppIconView: View {
    @Binding var appIcon: AppIcon
    @Binding var dockScaled: Bool
    @Binding var dockWidth: CGFloat
    @EnvironmentObject var dockSettings: DockSettings
    
    @State private var isOnHover = false
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .foregroundColor(appIcon.color)
            .frame(width: 46*appIcon.scaleRate.scaleRete, height: 46*appIcon.scaleRate.scaleRete)
            .shadow(radius: 1, x:0, y: 2)
            .padding([.leading], 12)
            .padding([.top, .bottom], 7)
            .onHover { onHover in
                if onHover {
                    withAnimation(.easeIn(duration: 0.2)) {
                        AppIcon.initializeDock(apps: &dockSettings.apps)
                        self.appIcon.scaleRate = .large
                        if let currentAppIndex = dockSettings.apps.firstIndex(where: { $0.id == appIcon.id }) {
                            print(currentAppIndex)
                            if currentAppIndex == 0 {
                                dockSettings.apps[currentAppIndex + 1].scaleRate = .medium
                                dockSettings.apps[currentAppIndex + 2].scaleRate = .light
                                dockWidth = 58*CGFloat(DockSettings().apps.count) + 58
                            }
                            else if currentAppIndex == 1 {
                                dockSettings.apps[currentAppIndex - 1].scaleRate = .medium
                                dockSettings.apps[currentAppIndex + 1].scaleRate = .medium
                                dockSettings.apps[currentAppIndex + 2].scaleRate = .light
                                dockWidth = 58*CGFloat(DockSettings().apps.count) + 76
                            }
                            else if currentAppIndex == dockSettings.apps.count - 1 {
                                dockSettings.apps[currentAppIndex - 1].scaleRate = .medium
                                dockSettings.apps[currentAppIndex - 2].scaleRate = .light
                                dockWidth = 58*CGFloat(DockSettings().apps.count) + 58
                            }
                            else if currentAppIndex == dockSettings.apps.count - 2 {
                                dockSettings.apps[currentAppIndex + 1].scaleRate = .medium
                                dockSettings.apps[currentAppIndex - 1].scaleRate = .medium
                                dockSettings.apps[currentAppIndex - 2].scaleRate = .light
                                dockWidth = 58*CGFloat(DockSettings().apps.count) + 76
                            }
                            else {
                                dockSettings.apps[currentAppIndex + 1].scaleRate = .medium
                                dockSettings.apps[currentAppIndex + 2].scaleRate = .light
                                dockSettings.apps[currentAppIndex - 1].scaleRate = .medium
                                dockSettings.apps[currentAppIndex - 2].scaleRate = .light
                                dockWidth = 58*CGFloat(DockSettings().apps.count) + 90
                            }
                        }
                    }
                }
            }
    }
}

struct AppIconView_Previews: PreviewProvider {
    static var previews: some View {
        AppIconView(appIcon: .constant(AppIcon(color: .darkGreenColor)), dockScaled: .constant(false), dockWidth: .constant(400))
            .environmentObject(DockSettings())
    }
}
