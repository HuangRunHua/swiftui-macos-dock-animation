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
    var scaleRate: ScaleRate = .normal
    
    enum ScaleRate {
        case normal
        case medium
        case large
        case light
        
        var scaleRete: CGFloat {
            switch self {
            case .normal: return 1.0
            case .light: return 1.3
            case .medium: return 1.4
            case .large: return 1.5
            }
        }
    }
    
    static func initializeDock( apps: inout [AppIcon]) {
        for index in apps.indices {
            apps[index].scaleRate = .normal
        }
    }
}
