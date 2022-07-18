//
//  BackgroundView.swift
//  MacOSDockAnimation
//
//  Created by Runhua Huang on 2022/7/18.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        Image("backgroundImage")
            .resizable()
            .aspectRatio(contentMode: .fill)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
