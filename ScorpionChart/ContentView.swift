//
//  ContentView.swift
//  ScorpionChart
//
//  Created by Alelksandr Korovkin on 24.12.2020.
//

import SwiftUI
import Charts

struct ContentView: View {
    var body: some View {
        VStack {
            Text("My Chart").padding()
            Spacer()
            Bar(entries: [
                BarChartDataEntry(x: 1, y: 1),
                BarChartDataEntry(x: 2, y: 2),
                BarChartDataEntry(x: 3, y: 1.5),
                BarChartDataEntry(x: 4, y: 2.2),
                BarChartDataEntry(x: 5, y: 1.8),
                BarChartDataEntry(x: 6, y: 3),
                BarChartDataEntry(x: 7, y: 1),
                BarChartDataEntry(x: 8, y: 2),
                BarChartDataEntry(x: 9, y: 1.5),
                BarChartDataEntry(x: 10, y: 1.3),
                BarChartDataEntry(x: 11, y: 1.8),
                BarChartDataEntry(x: 12, y: 2.4),
            ])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
