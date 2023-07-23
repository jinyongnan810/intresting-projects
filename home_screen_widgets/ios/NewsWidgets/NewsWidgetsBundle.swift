//
//  NewsWidgetsBundle.swift
//  NewsWidgets
//
//  Created by きんゆうなん on 2023/07/23.
//

import WidgetKit
import SwiftUI

@main
struct NewsWidgetsBundle: WidgetBundle {
    var body: some Widget {
        NewsWidgets()
        NewsWidgetsLiveActivity()
    }
}
