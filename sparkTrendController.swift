//
//  sparkTrendController.swift
//  
//
//  Created by Danial Aqil on 24/7/19.
//

import UIKit
import Charts

class sparkTrendController: UIViewController {
    

    @IBOutlet weak var chiller1TrendSpark: LineChartView!
    @IBOutlet weak var chiller2TrendSpark: LineChartView!
    @IBOutlet weak var chiller3TrendSpark: LineChartView!
    @IBOutlet weak var chiller4TrendSpark: LineChartView!
    
    var numberOfSparksChiller1: [Double] = [5,8,6,4,2,1,2,1,1,0]
    
    var numberOfSparksChiller2: [Double] = [10,13,8,7,8,7,5,4,2,1]
    
    var numberOfSparksChiller3: [Double] = [15,13,8,2,2,7,5,5,6,1]
    
    var numberOfSparksChiller4: [Double] = [12,3,5,7,3,7,5,4,7,1]
    
    var daysNumbered: [Double] = [1,2,3,4,5,6,7,8,9,10]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.topItem?.title = "Trends of Sparks"
        
        customizeChart(dataPoints: numberOfSparksChiller1, values: daysNumbered, lineChartView: chiller1TrendSpark, label: "Chiller 1 Sparks")
        customizeChart(dataPoints: numberOfSparksChiller2, values: daysNumbered, lineChartView: chiller2TrendSpark, label: "Chiller 2 Sparks")
        customizeChart(dataPoints: numberOfSparksChiller3, values: daysNumbered, lineChartView: chiller3TrendSpark, label: "Chiller 3 Sparks")
        customizeChart(dataPoints: numberOfSparksChiller4, values: daysNumbered, lineChartView: chiller4TrendSpark, label: "Chiller 4 Sparks")

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    func customizeChart (dataPoints: [Double
        ], values: [Double], lineChartView: LineChartView, label: String) {
        
        //1) set ChartDataEntry
        var dataEntries: [ChartDataEntry] = []
        for i in 0..<dataPoints.count {
            let entries = ChartDataEntry(x: values[i], y: dataPoints[i])
            //let dataEntry = LineChartDataSet(entries: entries, label: label)
            dataEntries.append(entries)
        }
        //2) set ChartDataSet
        let chartDataSet = LineChartDataSet(entries: dataEntries, label: label)
        
        //3) set ChartData
        let lineChartData = LineChartData(dataSet: chartDataSet)
        
        //4) assign it to chart's data
        lineChartView.data = lineChartData
        
    }
    
    
}
