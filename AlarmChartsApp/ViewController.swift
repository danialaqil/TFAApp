//
//  ViewController.swift
//  AlarmChartsApp
//
//  Created by Danial Aqil on 1/7/19.
//  Copyright © 2019 imdadsl. All rights reserved.
//

import UIKit
import Charts

class ViewController: UIViewController {

    @IBOutlet weak var chillerOne: PieChartView!
    
    @IBOutlet weak var chillerTwo: PieChartView!
    
    @IBOutlet weak var chillerThree: PieChartView!
    
    @IBOutlet weak var chillerFour: PieChartView!
    
    let sparkType = ["Spark 1", "Spark 2", "Spark 3", "Spark 4", "Spark 5"]
    
    let sparkNumbersChiller1 = [3,7,5,7,3]
    let sparkNumbersChiller2 = [5,4,7,4,6]
    let sparkNumbersChiller3 = [2,5,7,5,2]
    let sparkNumbersChiller4 = [3,6,9,3,7]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.topItem?.title = "Summary"
        // Do any additional setup after loading the view.
        customizeChart(dataPoints: sparkType, values: sparkNumbersChiller1.map{ Double($0) }, pieChartView: chillerOne)
        customizeChart(dataPoints: sparkType, values: sparkNumbersChiller2.map{ Double($0) }, pieChartView: chillerTwo)
        customizeChart(dataPoints: sparkType, values: sparkNumbersChiller3.map{ Double($0) }, pieChartView: chillerThree)
        customizeChart(dataPoints: sparkType, values: sparkNumbersChiller4.map{ Double($0) }, pieChartView: chillerFour)
    }
    func customizeChart (dataPoints: [String
        ], values: [Double], pieChartView: PieChartView) {
        
        //1) set ChartDataEntry
        var dataEntries: [ChartDataEntry] = []
        for i in 0..<dataPoints.count {
            let dataEntry = PieChartDataEntry(value: values[i], label: dataPoints[i], data: AnyObject.self)
            dataEntries.append(dataEntry)
        }
        //2) set ChartDataSet
        let pieChartDataSet = PieChartDataSet(entries: dataEntries, label: nil)
        pieChartDataSet.colors = colorsOfCharts(numberOfColor: dataPoints.count)
        
        //3) set ChartData
        let pieChartData = PieChartData(dataSet: pieChartDataSet)
        let format = NumberFormatter()
        format.numberStyle = .none
        let formatter = DefaultValueFormatter(formatter: format)
        pieChartData.setValueFormatter(formatter)
        
        //4) assign it to chart's data
        pieChartView.data = pieChartData

    }
    
    private func colorsOfCharts(numberOfColor: Int) -> [UIColor] {
        var colors: [UIColor] = []
        for _ in 0..<numberOfColor {
            let red = Double(arc4random_uniform(256))
            let green = Double(arc4random_uniform(256))
            let blue = Double(arc4random_uniform(256))
            let color = UIColor(red: CGFloat(red/255), green: CGFloat(green/255), blue: CGFloat(blue/255), alpha: 1)
            colors.append(color)
        }
        return colors
    }
    


}

