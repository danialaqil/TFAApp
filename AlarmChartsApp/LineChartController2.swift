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
    
    @IBOutlet weak internal var lineChart: LineChartView!
    
    @IBOutlet weak internal var textField: UITextField!
    
    var numbers: [Double] = [1,43,5,75,23,07,35,54,67,11]

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.topItem?.title = "Chiller 2"
        updateGraph()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func inputValues(_ sender: Any) {
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
        
        line1.colors = [NSUIColor.red]
        let data = LineChartData()
        data.addDataSet(line1)
        lineChart.data = data
        lineChart.chartDescription?.text = "Chiller 2"
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
