//
//  LineChartController2.swift
//  AlarmChartsApp
//
//  Created by Danial Aqil on 8/7/19.
//  Copyright © 2019 imdadsl. All rights reserved.
//

import UIKit
import Charts

class LineChartController2: UIViewController {
    
    @IBOutlet weak internal var lineChart: CombinedChartView!
    
    @IBOutlet weak internal var textField: UITextField!
    
    //line chart
    
    var numbers: [Double] = [1,43,5,75,23,07,35,54,67,11]
    
    var xAxis: [Double] = [1,2,3,4,5,6,7,8,9,10]
    
    //scatter plot
    
    var scatterNumbers: [Double] = [43, 23, 54]
    var scatterXaxis: [Double] = [2, 5, 8]

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.topItem?.title = "Chiller 2"
        updateGraph()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func updateGraph(){
        var lineChartEntry = [ChartDataEntry]()
        for i in 0..<numbers.count {
            let value = ChartDataEntry(x: xAxis[i], y: numbers[i])
            lineChartEntry.append(value)
        }
        
        var scatterChartEntry = [ChartDataEntry]()
        for i in 0..<scatterNumbers.count {
            let value = ChartDataEntry(x: scatterXaxis[i], y: scatterNumbers[i])
            scatterChartEntry.append(value)
        }
        
        let scatter1 = ScatterChartDataSet(entries: scatterChartEntry, label: "Scatter")
        scatter1.colors = [NSUIColor.black]
        let data2 = ScatterChartData()
        data2.addDataSet(scatter1)
        
        let line1 = LineChartDataSet(entries: lineChartEntry, label: "Number")
        line1.colors = [NSUIColor.red]
        let data = LineChartData()
        data.addDataSet(line1)
 
        let combinedData = CombinedChartData()
        combinedData.lineData = data
        combinedData.scatterData = data2
        lineChart.data = combinedData
        
        //disable linechart points to be displayed
        line1.drawCirclesEnabled = false
        line1.drawValuesEnabled = false
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
