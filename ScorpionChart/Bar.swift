//
//  ContentView.swift
//  ScorpionChart
//
//  Created by Alelksandr Korovkin on 24.12.2020.
//

import SwiftUI
import Charts

struct Bar: UIViewRepresentable {
    var entries: [BarChartDataEntry]
    
    func makeUIView(context: Context) -> BarChartView {
        let chart = BarChartView()
        chart.data = addData()
        chart.rightAxis.enabled = false
        chart.drawBarShadowEnabled = false
        chart.animate(yAxisDuration: 0.6, easingOption: ChartEasingOption.easeOutExpo)
        return chart
    }
    
    func updateUIView(_ uiView: BarChartView, context: Context) {
        
    }
    
    func addData() -> BarChartData  {
        let data = BarChartData()
        let dataSet = BarChartDataSet(entries: entries)
        dataSet.colors = [NSUIColor.blue]
        dataSet.label = "My Data"
        data.addDataSet(dataSet)
        return data
    }
    
    typealias UIViewType = BarChartView
}

struct Bar_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Bar(entries: [
                BarChartDataEntry(x: 1, y: 1),
                BarChartDataEntry(x: 2, y: 2),
                BarChartDataEntry(x: 3, y: 1.5),
                BarChartDataEntry(x: 4, y: 2.2),
                BarChartDataEntry(x: 5, y: 1.8),
                BarChartDataEntry(x: 6, y: 3),
            ])
        }
    }
}
