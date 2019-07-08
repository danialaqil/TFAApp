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
    
    var numbers : [Double] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
    }


}
