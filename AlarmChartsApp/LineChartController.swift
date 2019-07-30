//
//  LineChartController.swift
//  AlarmChartsApp
//
//  Created by Danial Aqil on 4/7/19.
//  Copyright © 2019 imdadsl. All rights reserved.
//

import UIKit
import Charts
import iOSDropDown

class LineChartController: UIViewController {
    
    @IBOutlet weak var lineChartSelector: DropDown!
    
    @IBOutlet weak var lineChart1: LineChartView!
    
    @IBOutlet weak var lineChart2: LineChartView!
    
    @IBOutlet weak var lineChart3: LineChartView!
    
    @IBOutlet weak var lineChart4: LineChartView!
    
    @IBOutlet weak var lineChart5: LineChartView!
    
    @IBOutlet weak var lineChart6: LineChartView!
    
    @IBOutlet weak var lineChart7: LineChartView!
    
    @IBOutlet weak var lineChart8: LineChartView!
    
    @IBOutlet weak var lineChart9: LineChartView!
    
    @IBOutlet weak var lineChart10: LineChartView!
    
    @IBOutlet weak var lineChart11: LineChartView!
    
    @IBOutlet weak var lineChart12: LineChartView!
    
    @IBOutlet weak var lineChart13: LineChartView!
    
    @IBOutlet weak var lineChart14: LineChartView!
    
    @IBOutlet weak var lineChart15: LineChartView!
    
    @IBOutlet weak var lineChart16: LineChartView!
    
    

    //var numbers : [Double] = [240, 3430, 4539, 3727, 572, 3588, 187, 4130, 4191, 1616, 3086, 4611, 755, 1802, 4613, 1882, 1257, 4724, 812, 783, 3071, 2337, 3742, 3252, 2458, 611, 2171, 1183, 118, 16, 2976, 455, 1993, 1709, 1135, 3684, 4351, 685, 3644, 2726, 2982, 3901, 3609, 628, 3034, 4057, 240, 3430, 4539, 240, 3430, 4539, 3727, 572, 3588, 187, 4130, 4191, 1616, 3086, 4611, 755, 1802, 4613, 1882, 1257, 4724, 812, 783, 3071, 2337, 3742, 3252, 2458, 611, 2171, 1183, 118, 16, 2976, 455, 1993, 1709, 1135, 3684, 4351, 685, 3644, 2726, 2982, 3901, 3609, 628, 3034, 4057, 240, 3430, 4539, 3727, 572, 3588, 187, 4130, 4191, 1616, 3086, 4611, 755, 1802, 4613, 1882, 1257, 4724, 812, 783, 3071, 2337, 3742, 3252, 2458, 611, 2171, 1183, 118, 16, 2976, 455, 1993, 1709, 1135, 3684, 4351, 685, 3644, 2726, 2982, 3901, 3609, 628, 3034, 4057, 240, 3430, 4539, 3727, 572, 3588, 187, 4130, 4191, 1616, 3086, 4611, 755, 1802, 4613, 1882, 1257, 4724, 812, 783, 3071, 2337, 3742, 3252, 2458, 611, 2171, 1183, 118, 16, 2976, 455, 1993, 1709, 1135, 3684, 4351, 685, 3644, 2726, 2982, 3901, 3609, 628, 3034, 4057, 240, 3430, 4539, 3727, 572, 3588, 187, 4130, 4191, 1616, 3086, 4611, 755, 1802, 4613, 1882, 1257, 4724, 812, 783, 3071, 2337, 3742, 3252, 2458, 611, 2171, 1183, 118, 16, 2976, 455, 1993, 1709, 1135, 3684, 4351, 685, 3644, 2726, 2982, 3901, 3609, 628, 3034, 4057, 240, 3430, 4539, 3727, 572, 3588, 187, 4130, 4191, 1616, 3086]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.topItem?.title = "Chiller 1"
        
        
        lineChartSelector.optionArray = ["Chart 1", "Chart 2", "Chart 3", "Chart 4", "Chart 5", "Chart 6", "Chart 7", "Chart 8", "Chart 9", "Chart 10", "Chart 11", "Chart 12", "Chart 13", "Chart 14", "Chart 15", "Chart 16"]
        
        lineChartSelector.optionIds = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
        
        lineChartSelector.checkMarkEnabled = false
        lineChart1.isHidden = true
        lineChart2.isHidden = true
        lineChart3.isHidden = true
        lineChart4.isHidden = true
        lineChart5.isHidden = true
        lineChart6.isHidden = true
        lineChart7.isHidden = true
        lineChart8.isHidden = true
        lineChart9.isHidden = true
        lineChart10.isHidden = true
        lineChart11.isHidden = true
        lineChart12.isHidden = true
        lineChart13.isHidden = true
        lineChart14.isHidden = true
        lineChart15.isHidden = true
        lineChart16.isHidden = true
        //updateGraph()
        displayGraphs()
    }
    
    func displayGraphs(){
        if lineChartSelector.selectedIndex == 0 {
            lineChart1.isHidden = false
        }
        if lineChartSelector.selectedIndex == 1 {
            lineChart2.isHidden = false
        }
        if lineChartSelector.selectedIndex == 2 {
            lineChart3.isHidden = false
        }
        if lineChartSelector.selectedIndex == 3 {
            lineChart4.isHidden = false
        }
        if lineChartSelector.selectedIndex == 4 {
            lineChart5.isHidden = false
        }
        if lineChartSelector.selectedIndex == 5 {
            lineChart6.isHidden = false
        }
        if lineChartSelector.selectedIndex == 6 {
            lineChart7.isHidden = false
        }
        if lineChartSelector.selectedIndex == 7 {
            lineChart8.isHidden = false
        }
        if lineChartSelector.selectedIndex == 8 {
            lineChart9.isHidden = false
        }
        if lineChartSelector.selectedIndex == 9 {
            lineChart10.isHidden = false
        }
        if lineChartSelector.selectedIndex == 10 {
            lineChart11.isHidden = false
        }
        if lineChartSelector.selectedIndex == 11 {
            lineChart12.isHidden = false
        }
        if lineChartSelector.selectedIndex == 12 {
            lineChart13.isHidden = false
        }
        if lineChartSelector.selectedIndex == 13 {
            lineChart14.isHidden = false
        }
        if lineChartSelector.selectedIndex == 14 {
            lineChart15.isHidden = false
        }
        if lineChartSelector.selectedIndex == 15 {
            lineChart16.isHidden = false
        }
    }
    
    
    override func didReceiveMemoryWarning() {
       super.didReceiveMemoryWarning()
    }
    
    /*
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
*/

}
