//
//  DockSettings.swift
//  MacOSDockAnimation
//
//  Created by Runhua Huang on 2022/7/18.
//

import SwiftUI

class DockSettings: ObservableObject {
    @Published var apps: [AppIcon] = [
        AppIcon(color: .blueColor),
        AppIcon(color: .lightGrayColor),
        AppIcon(color: .lightGreenColor),
        AppIcon(color: .lightYellowColor),
        AppIcon(color: .lightOrangeColor),
        AppIcon(color: .darkRedColor),
        AppIcon(color: .whiteColor),
        AppIcon(color: .lightPinkColor),
        AppIcon(color: .darkGreenColor),
        AppIcon(color: .lightYellowColor),
        AppIcon(color: .lightOrangeColor),
        AppIcon(color: .darkRedColor),
    ]
    
    @Published var counts = 0
}
