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
    
    var numbers : [Double] = [3,7,2,5,2,9,11,6,7,8,9,10]
    
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
