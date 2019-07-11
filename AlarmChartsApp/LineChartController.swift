//
//  LineChartController.swift
//  AlarmChartsApp
//
//  Created by Danial Aqil on 4/7/19.
//  Copyright © 2019 imdadsl. All rights reserved.
//

import UIKit
import Charts

class LineChartController: UIViewController {
    @IBOutlet weak var lineChart: LineChartView!
    
    @IBOutlet weak var textField: UITextField!
    
    var numbers : [Double] = [4611, 755, 1802, 4613, 1882, 1257, 4724, 812, 783, 3071, 2337, 3742, 3252, 2458, 611, 2171, 1183, 118, 16, 2976, 455, 1993, 1709, 1135, 3684, 4351, 685, 3644, 2726, 2982, 3901, 3609, 628, 3034, 4057, 240, 3430, 4539, 3727, 572, 3588, 187, 4130, 4191, 1616, 3086]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.topItem?.title = "Chiller 1"
        updateGraph()
    }
    
    
    override func didReceiveMemoryWarning() {
       super.didReceiveMemoryWarning()
    }
    
    @IBAction func inputValue(_ sender: Any) {
        let input = Double(textField.text!)
        numbers.append(input!)
        updateGraph()
    }
    
    func updateGraph(){
        var lineChartEntry = [ChartDataEntry]()
        for i in 0..<numbers.count {
            let value = ChartDataEntry(x: Double(i), y: numbers[i])
            lineChartEntry.append(value)
        }
        let line1 = LineChartDataSet(entries: lineChartEntry, label: "Number")
        
        line1.colors = [NSUIColor.blue]
        let data = LineChartData()
        data.addDataSet(line1)
        lineChart.data = data
        lineChart.chartDescription?.text = "Chiller 1"
        
        
    }


}
