//
//  PieChartData.swift
//  Application IOS
//
//  Created by Marine Bocquillion on 20/03/2024.
//

import SwiftUI

    struct PieChartData: Identifiable {
        var id = UUID().uuidString
        var day: String
        var hours: Int
        var type: String = ""
        var color: Color
    }
