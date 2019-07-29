//
//  sparkTrendController.swift
//  
//
//  Created by Danial Aqil on 24/7/19.
//

import UIKit
import Charts

class sparkTrendController: UIViewController {
        
    @IBOutlet weak var lineChart1: LineChartView!
    
    @IBOutlet weak var lineChart2: LineChartView!
    
    @IBOutlet weak var LineChart3: LineChartView!
    
    @IBOutlet weak var LineChart4: LineChartView!
        
    
    let numberOfSparksChiller1: [Double] = [5,8,6,4,2,1,2,1,1,0]
    
    let numberOfSparksChiller2: [Double] = [10,13,8,7,8,7,5,4,2,1]
    
    let numberOfSparksChiller3: [Double] = [15,13,8,2,2,7,5,5,6,1]
    
    let numberOfSparksChiller4: [Double] = [12,3,5,7,3,7,5,4,7,1]
    
    let daysNumbered: [Double] = [1,2,3,4,5,6,7,8,9,10]
 

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.topItem?.title = "Trends of Sparks"
        
        customiseChart(datapoints: numberOfSparksChiller1, values: daysNumbered, lineChartView: lineChart1, label: "Chiller 1")
        
        customiseChart(datapoints: numberOfSparksChiller2, values: daysNumbered, lineChartView: lineChart2, label: "Chiller 2")
        
        customiseChart(datapoints: numberOfSparksChiller3, values: daysNumbered, lineChartView: LineChart3, label: "Chiller 3")
        
        customiseChart(datapoints: numberOfSparksChiller4, values: daysNumbered, lineChartView: LineChart4, label: "Chiller 4")
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func customiseChart (datapoints: [Double], values: [Double], lineChartView: LineChartView, label: String) {
        
        //1) set ChartDataEntry
        
        var dataEntries: [ChartDataEntry] = []
        for i in 0..<datapoints.count {
            let entries = ChartDataEntry(x: values[i], y: datapoints[i])
            dataEntries.append(entries)
        }
        
        //2) set ChartDatSet
        let chartDataSet = LineChartDataSet(entries: dataEntries, label: label)
        
        //3) set ChartData
        let lineChartData = LineChartData(dataSet: chartDataSet)
        
        //4) assign it to chart's data
        lineChartView.data = lineChartData
    }
}
