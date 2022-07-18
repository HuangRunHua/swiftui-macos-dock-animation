//
//  App.swift
//  MacOSDockAnimation
//
//  Created by Runhua Huang on 2022/7/18.
//

import SwiftUI

struct AppIcon: Identifiable {
    var id = UUID()
    var color: Color
    
    static let apps: [AppIcon] = [
        AppIcon(color: .blueColor),
        AppIcon(color: .lightGrayColor),
        AppIcon(color: .lightGreenColor),
        AppIcon(color: .lightYellowColor),
        AppIcon(color: .lightOrangeColor),
        AppIcon(color: .darkRedColor),
        AppIcon(color: .whiteColor),
        AppIcon(color: .lightPinkColor),
        AppIcon(color: .darkGreenColor),
    ]
}
