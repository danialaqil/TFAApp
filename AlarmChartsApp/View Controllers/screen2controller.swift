//
//  screen2controller.swift
//  AlarmChartsApp
//
//  Created by Danial Aqil on 27/8/19.
//  Copyright © 2019 imdadsl. All rights reserved.
//

import UIKit
import SnapKit
import Alamofire
import Charts

class screen2controller: UIViewController {
    let rule1xChiller1: [Double] = [1,2,3,4,5,6,7,8,9,10]
    let rule1yChiller1: [Double]  = [1,4,6,3,6,7,9,1,7,8]
    
    let rule2xChiller1: [Double]  = [1,2,3,4,5,6,7,8,9,10]
    let rule2yChiller1: [Double]  = [6,4,0,6,7,1,5,1,10,6]
    
    let rule3xChiller1: [Double]  = [1,2,3,4,5,6,7,8,9,10]
    let rule3yChiller1: [Double]  = [1,9,5,10,15,16,4,7,8,9]
    
    let rule4xChiller1: [Double]  = [1,2,3,4,5,6,7,8,9,10]
    let rule4yChiller1: [Double]  = [1,3,4,5,4,6,1,2,5,5]
    
    let rule5xChiller1: [Double]  = [1,2,3,4,5,6,7,8,9,10]
    let rule5yChiller1: [Double]  = [8,6,5,4,6,5,4,3,1,6]
    
    let rule6xChiller1: [Double]  = [1,2,3,4,5,6,7,8,9,10]
    let rule6yChiller1: [Double]  = [9,7,6,5,7,5,3,2,4,6]
    
    let rule7xChiller1: [Double]  = [1,2,3,4,5,6,7,8,9,10]
    let rule7yChiller1: [Double]  = [1,3,5,1,1,1,1,4,5,6]
    
    let suppressedXChiller1: [Double] = [1,3,4,8,9]
    let suppressedYChiller1: [Double] = [9,5,10,7,5]
    
    let exsuppressedXChiller1: [Double] = [2,5]
    let exsuppressedYChiller1: [Double] = [4,7]
    
    @IBOutlet weak var chiller1Chart: CombinedChartView!
    
    @IBOutlet weak var chiller2Chart: CombinedChartView!
    
    @IBOutlet weak var chiller3Chart: CombinedChartView!
    
    @IBOutlet weak var chiller4Chart: CombinedChartView!
    
    @IBOutlet weak var chiller1go: UIButton!
    @IBOutlet weak var chiller2go: UIButton!
    @IBOutlet weak var chiller3go: UIButton!
    @IBOutlet weak var chiller4go: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.topItem?.title = "Spark Trend per Chiller"
        
        customiseChart(rule1x: rule1xChiller1, rule1y: rule1yChiller1, rule2x: rule2xChiller1, rule2y: rule2yChiller1, rule3x: rule3xChiller1, rule3y: rule3yChiller1, rule4x: rule4xChiller1, rule4y: rule4yChiller1, rule5x: rule5xChiller1, rule5y: rule5yChiller1, rule6x: rule6xChiller1, rule6y: rule6yChiller1, rule7x: rule7xChiller1, rule7y: rule7yChiller1, suppressedSparksX: suppressedXChiller1, suppressedSparksY: suppressedYChiller1, exsuppressedSparksX: exsuppressedXChiller1, exsuppressedSparksY: exsuppressedYChiller1, CombinedChartView: chiller1Chart, labelRule1: "Rule 1", labelRule2: "Rule 2", labelRule3: "Rule 3", labelRule4: "Rule 4", labelRule5: "Rule 5", labelRule6: "Rule 6", labelRule7: "Rule 7", labelSuppressed: "Suppressed Alarms", labelExsuppressed: "Ex-Suppressed Alarms")
        
        self.hidesBottomBarWhenPushed = false
        
        chiller1Chart.rightAxis.enabled = false
        chiller1Chart.xAxis.labelPosition = .bottom
        
       
        //let xString =
   
        //print(\Highlight.x)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    public func getMarkerPosition(highlight: Highlight) -> CGPoint
    {
        
        print(String(highlight.x))
        //print(String(highlight.drawX))
        return CGPoint(x: highlight.drawX, y: highlight.drawY)
        
        
        
    }

    
    func customiseChart (rule1x: [Double], rule1y: [Double], rule2x: [Double], rule2y: [Double], rule3x: [Double], rule3y: [Double], rule4x: [Double], rule4y: [Double], rule5x: [Double], rule5y: [Double], rule6x: [Double], rule6y: [Double], rule7x: [Double], rule7y: [Double], suppressedSparksX: [Double], suppressedSparksY: [Double], exsuppressedSparksX: [Double], exsuppressedSparksY: [Double], CombinedChartView: CombinedChartView, labelRule1: String, labelRule2: String, labelRule3: String, labelRule4: String, labelRule5: String, labelRule6: String, labelRule7: String, labelSuppressed: String, labelExsuppressed: String)  {
        
        var allLineChartDataSets: [LineChartDataSet] = [LineChartDataSet]()
        var allScatterDataSets: [ScatterChartDataSet] = [ScatterChartDataSet]()
        
        //1) set ChartDataEntry for all the graphs
        var rule1ChartEntries: [ChartDataEntry] = []
        for i in 0..<rule1y.count {
            let entries = ChartDataEntry(x: rule1x[i], y: rule1y[i])
            rule1ChartEntries.append(entries)
        }
        var rule2ChartEntries: [ChartDataEntry] = []
        for i in 0..<rule1y.count {
            let entries = ChartDataEntry(x: rule2x[i], y: rule2y[i])
            rule2ChartEntries.append(entries)
        }
        var rule3ChartEntries: [ChartDataEntry] = []
        for i in 0..<rule3y.count {
            let entries = ChartDataEntry(x: rule3x[i], y: rule3y[i])
            rule3ChartEntries.append(entries)
        }
        var rule4ChartEntries: [ChartDataEntry] = []
        for i in 0..<rule4y.count {
            let entries = ChartDataEntry(x: rule4x[i], y: rule4y[i])
            rule4ChartEntries.append(entries)
        }
        var rule5ChartEntries: [ChartDataEntry] = []
        for i in 0..<rule1y.count {
            let entries = ChartDataEntry(x: rule5x[i], y: rule5y[i])
            rule5ChartEntries.append(entries)
        }
        var rule6ChartEntries: [ChartDataEntry] = []
        for i in 0..<rule6y.count {
            let entries = ChartDataEntry(x: rule6x[i], y: rule6y[i])
            rule6ChartEntries.append(entries)
        }
        var rule7ChartEntries: [ChartDataEntry] = []
        for i in 0..<rule7y.count {
            let entries = ChartDataEntry(x: rule7x[i], y: rule7y[i])
            rule7ChartEntries.append(entries)
        }
        var suppressedScatterChartEntries: [ChartDataEntry] = []
        for i in 0..<suppressedSparksY.count {
            let entries = ChartDataEntry(x: suppressedSparksX[i], y: suppressedSparksY[i])
            suppressedScatterChartEntries.append(entries)
        }
        var exsuppressedScatterChartEntries: [ChartDataEntry] = []
        for i in 0..<exsuppressedSparksY.count {
            let entries = ChartDataEntry(x: exsuppressedSparksX[i], y: exsuppressedSparksY[i])
            exsuppressedScatterChartEntries.append(entries)
        }
        
        //2) set ChartDataSet for all the charts
        let rule1DataSet = LineChartDataSet(entries: rule1ChartEntries, label: labelRule1)
        rule1DataSet.colors = [NSUIColor.black]
        let rule1data = LineChartData()
        rule1data.addDataSet(rule1DataSet)
        rule1DataSet.drawCirclesEnabled = false
        rule1DataSet.drawValuesEnabled = false
        allLineChartDataSets.append(rule1DataSet)
        
        let rule2DataSet = LineChartDataSet(entries: rule2ChartEntries, label: labelRule2)
        rule2DataSet.colors = [NSUIColor.darkGray]
        let rule2data = LineChartData()
        rule2data.addDataSet(rule2DataSet)
        rule2DataSet.drawCirclesEnabled = false
        rule2DataSet.drawValuesEnabled = false
        allLineChartDataSets.append(rule2DataSet)

        
        let rule3DataSet = LineChartDataSet(entries: rule3ChartEntries, label: labelRule3)
        rule3DataSet.colors = [NSUIColor.gray]
        let rule3data = LineChartData()
        rule3data.addDataSet(rule3DataSet)
        rule3DataSet.drawCirclesEnabled = false
        rule3DataSet.drawValuesEnabled = false
        allLineChartDataSets.append(rule3DataSet)

        
        let rule4DataSet = LineChartDataSet(entries: rule3ChartEntries, label: labelRule3)
        rule4DataSet.colors = [NSUIColor.lightGray]
        let rule4data = LineChartData()
        rule4data.addDataSet(rule4DataSet)
        rule4DataSet.drawCirclesEnabled = false
        rule4DataSet.drawValuesEnabled = false
        allLineChartDataSets.append(rule4DataSet)

        
        let rule5DataSet = LineChartDataSet(entries: rule5ChartEntries, label: labelRule5)
        rule5DataSet.colors = [NSUIColor.green]
        let rule5data = LineChartData()
        rule5data.addDataSet(rule5DataSet)
        rule5DataSet.drawCirclesEnabled = false
        rule5DataSet.drawValuesEnabled = false
        allLineChartDataSets.append(rule5DataSet)
        
        let rule6DataSet = LineChartDataSet(entries: rule6ChartEntries, label: labelRule6)
        rule6DataSet.colors = [NSUIColor.purple]
        let rule6data = LineChartData()
        rule6data.addDataSet(rule6DataSet)
        rule6DataSet.drawCirclesEnabled = false
        rule6DataSet.drawValuesEnabled = false
        allLineChartDataSets.append(rule6DataSet)

        
        let rule7DataSet = LineChartDataSet(entries: rule7ChartEntries, label: labelRule7)
        rule7DataSet.colors = [NSUIColor.yellow]
        let rule7data = LineChartData()
        rule7data.addDataSet(rule7DataSet)
        rule7DataSet.drawCirclesEnabled = false
        rule7DataSet.drawValuesEnabled = false
        allLineChartDataSets.append(rule7DataSet)

        
        let suppressedSparkDataSet = ScatterChartDataSet(entries: suppressedScatterChartEntries, label: labelSuppressed)
        suppressedSparkDataSet.colors = [NSUIColor.red]
        let suppressedData = ScatterChartData()
        suppressedData.addDataSet(suppressedSparkDataSet)
        allScatterDataSets.append(suppressedSparkDataSet)
        
        let exsuppressedSparkDataSet = ScatterChartDataSet(entries: exsuppressedScatterChartEntries, label: labelExsuppressed)
        exsuppressedSparkDataSet.colors = [NSUIColor.blue]
        let exsuppressedData = ScatterChartData()
        exsuppressedData.addDataSet(exsuppressedSparkDataSet)
        allScatterDataSets.append(exsuppressedSparkDataSet)
        
        // 3) set combinedData
        let lineChartDataSets = LineChartData(dataSets: allLineChartDataSets)
        let scatterChartDataSets = ScatterChartData(dataSets: allScatterDataSets)
        let combinedData = CombinedChartData()
        combinedData.lineData = lineChartDataSets
        combinedData.scatterData = scatterChartDataSets
        
        //4) assign all the data into the combined chart
        CombinedChartView.data = combinedData
        
    }
}
