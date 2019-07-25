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
    
    var lineChartEntry1 = [ChartDataEntry]()
    
    var lineChartEntry2 = [ChartDataEntry]()
    
    var lineChartEntry3 = [ChartDataEntry]()
    
    var lineChartEntry4 = [ChartDataEntry]()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.topItem?.title = "Trends of Sparks"
        updateGraph(daysNumbered: daysNumbered, numberOfSparks: numberOfSparksChiller1, label: "Chiller 1", chiller: chiller1TrendSpark)
        updateGraph(daysNumbered: daysNumbered, numberOfSparks: numberOfSparksChiller2, label: "Chiller 2", chiller: chiller2TrendSpark)
        updateGraph(daysNumbered: daysNumbered, numberOfSparks: numberOfSparksChiller3, label: "Chiller 3", chiller: chiller3TrendSpark)
        updateGraph(daysNumbered: daysNumbered, numberOfSparks: numberOfSparksChiller4, label: "Chiller 4", chiller: chiller4TrendSpark)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func updateGraph(daysNumbered: [Double], numberOfSparks: [Double], label: String, chiller: LineChartView) {
        var lineChartEntry = [ChartDataEntry]()
        for i in 0..<daysNumbered.count {
            let value = ChartDataEntry(x: daysNumbered[i], y: numberOfSparks[i])
            if chiller == chiller1TrendSpark {
                lineChartEntry = lineChartEntry1
            }
            if chiller == chiller2TrendSpark {
                lineChartEntry = lineChartEntry2
            }
            if chiller == chiller3TrendSpark {
                lineChartEntry = lineChartEntry3
            }
            if chiller == chiller4TrendSpark {
                lineChartEntry = lineChartEntry4
            }
            lineChartEntry.append(value)
            //LineChartDataSet(entries: lineChartEntry, label: label)
            LineChartDataSet(entries: lineChartEntry, label: label).colors = [NSUIColor.red]
            let data = LineChartData()
            data.addDataSet(LineChartDataSet(entries: lineChartEntry, label: label))
            chiller.data = data
            chiller.chartDescription?.text = "Number Of Sparks"
        }
    }
}
