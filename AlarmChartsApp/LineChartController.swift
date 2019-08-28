//
//  LineChartController.swift
//  AlarmChartsApp
//
//  Created by Danial Aqil on 4/7/19.
//  Copyright © 2019 imdadsl. All rights reserved.
//

import UIKit
import Charts
import Alamofire

class LineChartController: UIViewController {

    // http://ec2-13-250-111-0.ap-southeast-1.compute.amazonaws.com/api/response

    
    let numberOfSparksGraph1: [Double] = [5,8,6,4,2,1,2,1,1,0]
    let numberOfSparksGraph2: [Double] = [10,13,8,7,8,7,5,4,2,1]
    let numberOfSparksGraph3: [Double] = [15,13,8,2,2,7,5,5,6,1]
    let numberOfSparksGraph4: [Double] = [12,3,5,7,3,7,5,4,7,1]
    let numberOfSparksGraph5: [Double] = [5,8,6,4,2,1,2,1,1,0]
    let numberOfSparksGraph6: [Double] = [10,13,8,7,8,7,5,4,2,1]
    let numberOfSparksGraph7: [Double] = [15,13,8,2,2,7,5,5,6,1]
    let numberOfSparksGraph8: [Double] = [12,3,5,7,3,7,5,4,7,1]
    let numberOfSparksGraph9: [Double] = [5,8,6,4,2,1,2,1,1,0]
    let numberOfSparksGraph10: [Double] = [10,13,8,7,8,7,5,4,2,1]
    let numberOfSparksGraph11: [Double] = [15,13,8,2,2,7,5,5,6,1]
    let numberOfSparksGraph12: [Double] = [12,3,5,7,3,7,5,4,7,1]
    let numberOfSparksGraph13: [Double] = [5,8,6,4,2,1,2,1,1,0]
    let numberOfSparksGraph14: [Double] = [10,13,8,7,8,7,5,4,2,1]
    let numberOfSparksGraph15: [Double] = [15,13,8,2,2,7,5,5,6,1]
    let numberOfSparksGraph16: [Double] = [12,3,5,7,3,7,5,4,7,1]
    
    let daysNumbered: [Double] = [1,2,3,4,5,6,7,8,9,10]
    
    let xScatter1: [Double] = [1, 5, 6]
    let yScatter1: [Double] = [5, 2, 1]
    let xScatter2: [Double] = [4, 6, 8, 9, 10]
    let yScatter2: [Double] = [7, 7, 5, 4, 1]
    let xScatter3: [Double] = [4]
    let yScatter3: [Double] = [2]
    let xScatter4: [Double] = [1, 5, 6, 9]
    let yScatter4: [Double] = [12, 3, 7, 7]
    let xScatter5: [Double] = [5]
    let yScatter5: [Double] = [2]
    let xScatter6: [Double] = [3, 6, 9, 10]
    let yScatter6: [Double] = [8, 7, 2, 1]
    let xScatter7: [Double] = [1,2,3,4,5]
    let yScatter7: [Double] = [15,13,8,2,2]
    let xScatter8: [Double] = [1, 3, 5, 7, 9]
    let yScatter8: [Double] = [12, 5, 3, 5, 7]
    let xScatter9: [Double] = [1]
    let yScatter9: [Double] = [5]
    let xScatter10: [Double] = [3,4,5]
    let yScatter10: [Double] = [8,7,8]
    let xScatter11: [Double] = [7, 8, 10]
    let yScatter11: [Double] = [5,5,1]
    let xScatter12: [Double] = [1]
    let yScatter12: [Double] = [12]
    let xScatter13: [Double] = [1,2,3]
    let yScatter13: [Double] = [5,8,6]
    let xScatter14: [Double] = [1, 5, 9]
    let yScatter14: [Double] = [10, 8, 2]
    let xScatter15: [Double] = []
    let yScatter15: [Double] = []
    let xScatter16: [Double] = [9, 10]
    let yScatter16: [Double] = [7, 1]

    
    @IBOutlet weak var backButton: UIBarButtonItem!
    
    @IBOutlet weak var lineChart1: CombinedChartView!
    @IBOutlet weak var lineChart2: CombinedChartView!
    @IBOutlet weak var lineChart3: CombinedChartView!
    @IBOutlet weak var lineChart4: CombinedChartView!
    @IBOutlet weak var lineChart5: CombinedChartView!
    @IBOutlet weak var lineChart6: CombinedChartView!
    @IBOutlet weak var lineChart7: CombinedChartView!
    @IBOutlet weak var lineChart8: CombinedChartView!
    @IBOutlet weak var lineChart9: CombinedChartView!
    @IBOutlet weak var lineChart10: CombinedChartView!
    @IBOutlet weak var lineChart11: CombinedChartView!
    @IBOutlet weak var lineChart12: CombinedChartView!
    @IBOutlet weak var lineChart13: CombinedChartView!
    @IBOutlet weak var lineChart14: CombinedChartView!
    @IBOutlet weak var lineChart15: CombinedChartView!
    @IBOutlet weak var lineChart16: CombinedChartView!
    
    @IBOutlet weak var graph1Controller: UISwitch!
    @IBOutlet weak var graph2Controller: UISwitch!
    @IBOutlet weak var graph3Controller: UISwitch!
    @IBOutlet weak var graph4Controller: UISwitch!
    @IBOutlet weak var gtaph5Contrller: UISwitch!
    @IBOutlet weak var graph6Controller: UISwitch!
    @IBOutlet weak var graph7Controller: UISwitch!
    @IBOutlet weak var graph8Controller: UISwitch!
    @IBOutlet weak var graph9Controller: UISwitch!
    @IBOutlet weak var graph10Controller: UISwitch!
    @IBOutlet weak var graph11Controller: UISwitch!
    @IBOutlet weak var graph12Controller: UISwitch!
    @IBOutlet weak var graph13Controller: UISwitch!
    @IBOutlet weak var graph14Controller: UISwitch!
    @IBOutlet weak var graph15Controller: UISwitch!
    @IBOutlet weak var graph16Controller: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.topItem?.title = "Chiller 1"
        
        /*
        lineChart1.setVisibleXRangeMaximum(5)
        lineChart1.setVisibleXRangeMinimum(0)
        lineChart2.setVisibleXRangeMaximum(5)
        lineChart2.setVisibleXRangeMinimum(0)
        lineChart3.setVisibleXRangeMaximum(5)
        lineChart3.setVisibleXRangeMinimum(0)
        lineChart4.setVisibleXRangeMaximum(5)
        lineChart4.setVisibleXRangeMinimum(0)
        lineChart5.setVisibleXRangeMaximum(5)
        lineChart5.setVisibleXRangeMinimum(0)
        lineChart6.setVisibleXRangeMaximum(5)
        lineChart6.setVisibleXRangeMinimum(0)
        lineChart7.setVisibleXRangeMaximum(5)
        lineChart7.setVisibleXRangeMinimum(0)
        lineChart8.setVisibleXRangeMaximum(5)
        lineChart8.setVisibleXRangeMinimum(0)
        lineChart9.setVisibleXRangeMaximum(5)
        lineChart9.setVisibleXRangeMinimum(0)
        lineChart10.setVisibleXRangeMaximum(5)
        lineChart10.setVisibleXRangeMinimum(0)
        lineChart11.setVisibleXRangeMaximum(5)
        lineChart11.setVisibleXRangeMinimum(0)
        lineChart12.setVisibleXRangeMaximum(5)
        lineChart12.setVisibleXRangeMinimum(0)
        lineChart13.setVisibleXRangeMaximum(5)
        lineChart13.setVisibleXRangeMinimum(0)
        lineChart14.setVisibleXRangeMaximum(5)
        lineChart14.setVisibleXRangeMinimum(0)
        lineChart15.setVisibleXRangeMaximum(5)
        lineChart15.setVisibleXRangeMinimum(0)
        lineChart16.setVisibleXRangeMaximum(5)
        lineChart16.setVisibleXRangeMinimum(0)
        */
        
        self.hidesBottomBarWhenPushed = true

        
        lineChart1.pinchZoomEnabled = true
        lineChart1.doubleTapToZoomEnabled = true
        lineChart2.pinchZoomEnabled = true
        lineChart2.doubleTapToZoomEnabled = true
        lineChart3.pinchZoomEnabled = true
        lineChart3.doubleTapToZoomEnabled = true
        lineChart4.pinchZoomEnabled = true
        lineChart4.doubleTapToZoomEnabled = true
        lineChart5.pinchZoomEnabled = true
        lineChart5.doubleTapToZoomEnabled = true
        lineChart6.pinchZoomEnabled = true
        lineChart6.doubleTapToZoomEnabled = true
        lineChart7.pinchZoomEnabled = true
        lineChart7.doubleTapToZoomEnabled = true
        lineChart8.pinchZoomEnabled = true
        lineChart8.doubleTapToZoomEnabled = true
        lineChart9.pinchZoomEnabled = true
        lineChart9.doubleTapToZoomEnabled = true
        lineChart10.pinchZoomEnabled = true
        lineChart10.doubleTapToZoomEnabled = true
        lineChart11.pinchZoomEnabled = true
        lineChart11.doubleTapToZoomEnabled = true
        lineChart12.pinchZoomEnabled = true
        lineChart12.doubleTapToZoomEnabled = true
        lineChart13.pinchZoomEnabled = true
        lineChart13.doubleTapToZoomEnabled = true
        lineChart14.pinchZoomEnabled = true
        lineChart14.doubleTapToZoomEnabled = true
        lineChart15.pinchZoomEnabled = true
        lineChart15.doubleTapToZoomEnabled = true
        lineChart16.pinchZoomEnabled = true
        lineChart16.doubleTapToZoomEnabled = true
        
        graph1Controller.isOn = false
        graph2Controller.isOn = false
        graph3Controller.isOn = false
        graph4Controller.isOn = false
        gtaph5Contrller.isOn = false
        graph6Controller.isOn = false
        graph7Controller.isOn = false
        graph8Controller.isOn = false
        graph9Controller.isOn = false
        graph10Controller.isOn = false
        graph11Controller.isOn = false
        graph12Controller.isOn = false
        graph13Controller.isOn = false
        graph14Controller.isOn = false
        graph15Controller.isOn = false
        graph16Controller.isOn = false
        
        graph1Display(graph1Controller)
        graph2Display(graph2Controller)
        graph3Display(graph3Controller)
        graph4Display(graph4Controller)
        graph5Display(gtaph5Contrller)
        graph6Display(graph6Controller)
        graph7DIsplay(graph7Controller)
        graph8Display(graph8Controller)
        graph9DIsplay(graph9Controller)
        graph10Display(graph10Controller)
        graph11Display(graph11Controller)
        graph12Display(graph12Controller)
        graph13Display(graph13Controller)
        graph14Display(graph14Controller)
        graph15Display(graph15Controller)
        graph16Display(graph16Controller)
        
        customiseChart(yValuesLine: numberOfSparksGraph1, xValuesLine: daysNumbered, CombinedChartView: lineChart1, labelLine: "Line Chart 1", labelScatter: "Sparks", xScatterPoints: xScatter1, yScatterPoints: yScatter1)
        customiseChart(yValuesLine: numberOfSparksGraph2, xValuesLine: daysNumbered, CombinedChartView: lineChart2, labelLine: "Line Chart 2", labelScatter: "Sparks", xScatterPoints: xScatter2, yScatterPoints: yScatter2)
        customiseChart(yValuesLine: numberOfSparksGraph3, xValuesLine: daysNumbered, CombinedChartView: lineChart3, labelLine: "Line Chart 3", labelScatter: "Sparks", xScatterPoints: xScatter3, yScatterPoints: yScatter3)
        customiseChart(yValuesLine: numberOfSparksGraph4, xValuesLine: daysNumbered, CombinedChartView: lineChart4, labelLine: "Line Chart 4", labelScatter: "Sparks", xScatterPoints: xScatter4, yScatterPoints: yScatter4)
        customiseChart(yValuesLine: numberOfSparksGraph5, xValuesLine: daysNumbered, CombinedChartView: lineChart5, labelLine: "Line Chart 5", labelScatter: "Sparks", xScatterPoints: xScatter5, yScatterPoints: yScatter5)
        customiseChart(yValuesLine: numberOfSparksGraph6, xValuesLine: daysNumbered, CombinedChartView: lineChart6, labelLine: "Line Chart 6", labelScatter: "Sparks", xScatterPoints: xScatter6, yScatterPoints: yScatter6)
        customiseChart(yValuesLine: numberOfSparksGraph7, xValuesLine: daysNumbered, CombinedChartView: lineChart7, labelLine: "Line Chart 7", labelScatter: "Sparks", xScatterPoints: xScatter7, yScatterPoints: yScatter7)
        customiseChart(yValuesLine: numberOfSparksGraph8, xValuesLine: daysNumbered, CombinedChartView: lineChart8, labelLine: "Line Chart 8", labelScatter: "Sparks", xScatterPoints: xScatter8, yScatterPoints: yScatter8)
        customiseChart(yValuesLine: numberOfSparksGraph4, xValuesLine: daysNumbered, CombinedChartView: lineChart9, labelLine: "Line Chart 9", labelScatter: "Sparks", xScatterPoints: xScatter9, yScatterPoints: yScatter9)
        customiseChart(yValuesLine: numberOfSparksGraph10, xValuesLine: daysNumbered, CombinedChartView: lineChart10, labelLine: "Line Chart 10", labelScatter: "Sparks", xScatterPoints: xScatter10, yScatterPoints: yScatter10)
        customiseChart(yValuesLine: numberOfSparksGraph11, xValuesLine: daysNumbered, CombinedChartView: lineChart11, labelLine: "Line Chart 11", labelScatter: "Sparks", xScatterPoints: xScatter11, yScatterPoints: yScatter11)
        customiseChart(yValuesLine: numberOfSparksGraph12, xValuesLine: daysNumbered, CombinedChartView: lineChart12, labelLine: "Line Chart 12", labelScatter: "Sparks", xScatterPoints: xScatter12, yScatterPoints: yScatter12)
        customiseChart(yValuesLine: numberOfSparksGraph13, xValuesLine: daysNumbered, CombinedChartView: lineChart13, labelLine: "Line Chart 13", labelScatter: "Sparks", xScatterPoints: xScatter13, yScatterPoints: yScatter13)
        customiseChart(yValuesLine: numberOfSparksGraph14, xValuesLine: daysNumbered, CombinedChartView: lineChart14, labelLine: "Line Chart 14", labelScatter: "Sparks", xScatterPoints: xScatter14, yScatterPoints: yScatter14)
        customiseChart(yValuesLine: numberOfSparksGraph15, xValuesLine: daysNumbered, CombinedChartView: lineChart15, labelLine: "Line Chart 15", labelScatter: "Sparks", xScatterPoints: xScatter15, yScatterPoints: yScatter15)
        customiseChart(yValuesLine: numberOfSparksGraph16, xValuesLine: daysNumbered, CombinedChartView: lineChart16, labelLine: "Line Chart 16", labelScatter: "Sparks", xScatterPoints: xScatter16, yScatterPoints: yScatter16)
        
        translateCharts(chartView: lineChart1)
        translateCharts(chartView: lineChart2)
        translateCharts(chartView: lineChart3)
        translateCharts(chartView: lineChart4)
        translateCharts(chartView: lineChart5)
        translateCharts(chartView: lineChart6)
        translateCharts(chartView: lineChart7)
        translateCharts(chartView: lineChart8)
        translateCharts(chartView: lineChart9)
        translateCharts(chartView: lineChart10)
        translateCharts(chartView: lineChart11)
        translateCharts(chartView: lineChart12)
        translateCharts(chartView: lineChart13)
        translateCharts(chartView: lineChart14)
        translateCharts(chartView: lineChart15)
        translateCharts(chartView: lineChart16)

    
    }
   
    
    override func didReceiveMemoryWarning() {
       super.didReceiveMemoryWarning()
    }
    
    @IBAction func unwindToViewController (sender: UIBarButtonItem){
        
    }

    
    @IBAction func graph1Display(_ sender: UISwitch) {
        if graph1Controller.isOn {
            lineChart1.isHidden = false
        } else {
            lineChart1.isHidden = true
        }
    }
    
    @IBAction func graph2Display(_ sender: UISwitch) {
        if graph2Controller.isOn {
            lineChart2.isHidden = false
        } else {
            lineChart2.isHidden = true
        }
    }
    
    @IBAction func graph3Display(_ sender: UISwitch) {
        if graph3Controller.isOn {
            lineChart3.isHidden = false
        } else {
            lineChart3.isHidden = true
        }
    }
    
    @IBAction func graph4Display(_ sender: UISwitch) {
        if graph4Controller.isOn {
            lineChart4.isHidden = false
        } else {
            lineChart4.isHidden = true
        }
    }
    
    @IBAction func graph5Display(_ sender: UISwitch) {
        if gtaph5Contrller.isOn {
            lineChart5.isHidden = false
        } else {
            lineChart5.isHidden = true
        }
    }
    
    @IBAction func graph6Display(_ sender: UISwitch) {
        if graph6Controller.isOn {
            lineChart6.isHidden = false
        } else {
            lineChart6.isHidden = true
        }
    }
    
    @IBAction func graph7DIsplay(_ sender: UISwitch) {
        if graph7Controller.isOn {
            lineChart7.isHidden = false
        } else {
            lineChart7.isHidden = true
        }
    }
    
    @IBAction func graph8Display(_ sender: UISwitch) {
        if graph8Controller.isOn {
            lineChart8.isHidden = false
        } else {
            lineChart8.isHidden = true
        }
    }
    
    @IBAction func graph9DIsplay(_ sender: UISwitch) {
        if graph9Controller.isOn {
            lineChart9.isHidden = false
        } else {
            lineChart9.isHidden = true
        }
    }
    
    @IBAction func graph10Display(_ sender: UISwitch) {
        if graph10Controller.isOn {
            lineChart10.isHidden = false
        } else {
            lineChart10.isHidden = true
        }
    }
    
    @IBAction func graph11Display(_ sender: UISwitch) {
        if graph11Controller.isOn {
            lineChart11.isHidden = false
        } else {
            lineChart11.isHidden = true
        }
    }
    
    @IBAction func graph12Display(_ sender: UISwitch) {
        if graph12Controller.isOn {
            lineChart12.isHidden = false
        } else {
            lineChart12.isHidden = true
        }
    }
    
    @IBAction func graph13Display(_ sender: UISwitch) {
        if graph13Controller.isOn {
            lineChart13.isHidden = false
        } else {
            lineChart13.isHidden = true
        }
    }
    
    @IBAction func graph14Display(_ sender: UISwitch) {
        if graph14Controller.isOn {
            lineChart14.isHidden = false
        } else {
            lineChart14.isHidden = true
        }
    }
    
    @IBAction func graph15Display(_ sender: UISwitch) {
        if graph15Controller.isOn {
            lineChart15.isHidden = false
        } else {
            lineChart15.isHidden = true
        }
    }
    
    @IBAction func graph16Display(_ sender: UISwitch) {
        if graph16Controller.isOn {
            lineChart16.isHidden = false
        } else {
            lineChart16.isHidden = true
        }
    }
    
    func customiseChart (yValuesLine: [Double], xValuesLine: [Double], CombinedChartView: CombinedChartView, labelLine: String, labelScatter: String, xScatterPoints: [Double], yScatterPoints: [Double]) {
        
        //1) set ChartDataEntry
        
        var lineChartEntries: [ChartDataEntry] = []
        for i in 0..<yValuesLine.count {
            let entries = ChartDataEntry(x: xValuesLine[i], y: yValuesLine[i])
            lineChartEntries.append(entries)
        }
        
        var scatterChartEntries: [ChartDataEntry] = []
        for i in 0..<yScatterPoints.count {
            let entries2 = ChartDataEntry(x: xScatterPoints[i], y: yScatterPoints[i])
            scatterChartEntries.append(entries2)
        }
        
        //2) set ChartDataSet
        let chartDataSet = LineChartDataSet(entries: lineChartEntries, label: labelLine)
        chartDataSet.colors = [NSUIColor.black]
        let data = LineChartData()
        data.addDataSet(chartDataSet)
        
        let scatterDataSet = ScatterChartDataSet(entries: scatterChartEntries, label: labelScatter)
        scatterDataSet.colors = [NSUIColor.red]
        let data2 = ScatterChartData()
        data2.addDataSet(scatterDataSet)
        
        //3) set CombinedData
        let combinedData = CombinedChartData()
        combinedData.lineData = data
        combinedData.scatterData = data2
        
        //4) assign it to chart's data
        CombinedChartView.data = combinedData
        
        //disable linechart points to be displayed
        chartDataSet.drawCirclesEnabled = false
        chartDataSet.drawValuesEnabled = false
    }
    
    func translateCharts (chartView: CombinedChartView) {
        if chartView == lineChart1 {
            let newMatrix = lineChart1.viewPortHandler.touchMatrix
            
            
            let oldMatrix2 = lineChart2.viewPortHandler.touchMatrix
            let currentMatrix2 = CGAffineTransform(a: oldMatrix2.a, b: oldMatrix2.b, c: oldMatrix2.c, d: oldMatrix2.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart2.viewPortHandler.refresh(newMatrix: currentMatrix2, chart: lineChart2, invalidate: true)
        } else if chartView == lineChart2 {
            let newMatrix = lineChart2.viewPortHandler.touchMatrix
            
            let oldMatrix3 = lineChart3.viewPortHandler.touchMatrix
            let currentMatrix3 = CGAffineTransform(a: oldMatrix3.a, b: oldMatrix3.b, c: oldMatrix3.c, d: oldMatrix3.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart3.viewPortHandler.refresh(newMatrix: currentMatrix3, chart: lineChart3, invalidate: true)
        } else if chartView == lineChart3 {
            let newMatrix = lineChart3.viewPortHandler.touchMatrix
            let oldMatrix4 = lineChart4.viewPortHandler.touchMatrix
            let currentMatrix4 = CGAffineTransform(a: oldMatrix4.a, b: oldMatrix4.b, c: oldMatrix4.c, d: oldMatrix4.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart4.viewPortHandler.refresh(newMatrix: currentMatrix4, chart: lineChart4, invalidate: true)
        } else if chartView == lineChart4 {
            let newMatrix = lineChart4.viewPortHandler.touchMatrix
            let oldMatrix5 = lineChart5.viewPortHandler.touchMatrix
            let currentMatrix5 = CGAffineTransform(a: oldMatrix5.a, b: oldMatrix5.b, c: oldMatrix5.c, d: oldMatrix5.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart5.viewPortHandler.refresh(newMatrix: currentMatrix5, chart: lineChart5, invalidate: true)
        } else if chartView == lineChart5 {
            let newMatrix = lineChart5.viewPortHandler.touchMatrix
            let oldMatrix6 = lineChart6.viewPortHandler.touchMatrix
            let currentMatrix6 = CGAffineTransform(a: oldMatrix6.a, b: oldMatrix6.b, c: oldMatrix6.c, d: oldMatrix6.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart6.viewPortHandler.refresh(newMatrix: currentMatrix6, chart: lineChart6, invalidate: true)
        } else if chartView == lineChart6 {
            let newMatrix = lineChart6.viewPortHandler.touchMatrix
            let oldMatrix7 = lineChart7.viewPortHandler.touchMatrix
            let currentMatrix7 = CGAffineTransform(a: oldMatrix7.a, b: oldMatrix7.b, c: oldMatrix7.c, d: oldMatrix7.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart7.viewPortHandler.refresh(newMatrix: currentMatrix7, chart: lineChart7, invalidate: true)
        } else if chartView == lineChart7 {
            let newMatrix = lineChart7.viewPortHandler.touchMatrix
            let oldmatrix8 = lineChart8.viewPortHandler.touchMatrix
            let currentMatrix8 = CGAffineTransform(a: oldmatrix8.a, b: oldmatrix8.b, c: oldmatrix8.c, d: oldmatrix8.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart8.viewPortHandler.refresh(newMatrix: currentMatrix8, chart: lineChart8, invalidate: true)
        } else if chartView == lineChart8 {
            let newMatrix = lineChart8.viewPortHandler.touchMatrix
            let oldMatrix9 = lineChart9.viewPortHandler.touchMatrix
            let currentMatrix9 = CGAffineTransform(a: oldMatrix9.a, b: oldMatrix9.b, c: oldMatrix9.c, d: oldMatrix9.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart9.viewPortHandler.refresh(newMatrix: currentMatrix9, chart: lineChart9, invalidate: true)
        } else if chartView == lineChart9 {
            let newMatrix = lineChart9.viewPortHandler.touchMatrix
            let oldMatrix10 = lineChart10.viewPortHandler.touchMatrix
            let currentMatrix10 = CGAffineTransform(a: oldMatrix10.a, b: oldMatrix10.b, c: oldMatrix10.c, d: oldMatrix10.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart10.viewPortHandler.refresh(newMatrix: currentMatrix10, chart: lineChart10, invalidate: true)
        } else if chartView == lineChart10 {
            let newMatrix = lineChart10.viewPortHandler.touchMatrix
            let oldMatrix11 = lineChart11.viewPortHandler.touchMatrix
            let currentMatrix11 = CGAffineTransform(a: oldMatrix11.a, b: oldMatrix11.b, c: oldMatrix11.c, d: oldMatrix11.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart11.viewPortHandler.refresh(newMatrix: currentMatrix11, chart: lineChart11, invalidate: true)
        } else if chartView == lineChart11 {
            let newMatrix = lineChart11.viewPortHandler.touchMatrix
            let oldMatrix12 = lineChart12.viewPortHandler.touchMatrix
            let currentMatrix12 = CGAffineTransform(a: oldMatrix12.a, b: oldMatrix12.b, c: oldMatrix12.c, d: oldMatrix12.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart12.viewPortHandler.refresh(newMatrix: currentMatrix12, chart: lineChart12, invalidate: true)
        } else if chartView == lineChart12 {
            let newMatrix = lineChart12.viewPortHandler.touchMatrix
            let oldMatrix13 = lineChart13.viewPortHandler.touchMatrix
            let currentMatrix13 = CGAffineTransform(a: oldMatrix13.a, b: oldMatrix13.b, c: oldMatrix13.c, d: oldMatrix13.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart13.viewPortHandler.refresh(newMatrix: currentMatrix13, chart: lineChart13, invalidate: true)
        } else if chartView == lineChart13 {
            let newMatrix = lineChart13.viewPortHandler.touchMatrix
            let oldMatrix14 = lineChart14.viewPortHandler.touchMatrix
            let currentMatrix14 = CGAffineTransform(a: oldMatrix14.a, b: oldMatrix14.b, c: oldMatrix14.c, d: oldMatrix14.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart14.viewPortHandler.refresh(newMatrix: currentMatrix14, chart: lineChart14, invalidate: true)
        } else if chartView == lineChart14 {
            let newMatrix = lineChart14.viewPortHandler.touchMatrix
            let oldMatrix15 = lineChart15.viewPortHandler.touchMatrix
            let currentMatrix15 = CGAffineTransform(a: oldMatrix15.a, b: oldMatrix15.b, c: oldMatrix15.c, d: oldMatrix15.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart15.viewPortHandler.refresh(newMatrix: currentMatrix15, chart: lineChart15, invalidate: true)
        } else if chartView == lineChart15 {
            let newMatrix = lineChart15.viewPortHandler.touchMatrix
            let oldmatrix16 = lineChart16.viewPortHandler.touchMatrix
            let currentmatrix16 = CGAffineTransform(a: oldmatrix16.a, b: oldmatrix16.b, c: oldmatrix16.c, d: oldmatrix16.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart16.viewPortHandler.refresh(newMatrix: currentmatrix16, chart: lineChart16, invalidate: true)
        } else if chartView == lineChart16 {
            let newMatrix = lineChart16.viewPortHandler.touchMatrix
            let oldMatrix1 = lineChart1.viewPortHandler.touchMatrix
            let currentMatrix1 = CGAffineTransform(a: oldMatrix1.a, b: oldMatrix1.b, c: oldMatrix1.c, d: oldMatrix1.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart1.viewPortHandler.refresh(newMatrix: currentMatrix1, chart: lineChart1, invalidate: true)
        }
        
        
        }
    
 
    
    /*
     func chartTranslated(chartView: ChartViewBase, dX: CGFloat, dY: CGFloat) {
        if  chartView == combinedChartView {
            let currentMatrix = chartView.viewPortHandler.touchMatrix
            lineChartView.viewPortHandler.refresh(newMatrix: currentMatrix, chart: lineChartView, invalidate: true)
        }else {
            let currentMatrix = chartView.viewPortHandler.touchMatrix
            combinedChartView.viewPortHandler.refresh(newMatrix: currentMatrix, chart: combinedChartView, invalidate: true)
        }
     }
     
     
     func chartTranslated(chartView: ChartViewBase, dX: CGFloat, dY: CGFloat) {
        if  chartView == combinedChartView {
            let newMatrix = chartView.viewPortHandler.touchMatrix
            let oldMatrix = lineChartView.viewPortHandler.touchMatrix
            let currentMatrix = CGAffineTransformMake(oldMatrix.a, oldMatrix.b, oldMatrix.c, oldMatrix.d, newMatrix.tx, oldMatrix.ty)
            lineChartView.viewPortHandler.refresh(newMatrix: currentMatrix, chart: lineChartView, invalidate: true)
        }else {
            let newMatrix = chartView.viewPortHandler.touchMatrix
            let oldMatrix = combinedChartView.viewPortHandler.touchMatrix
            let currentMatrix = CGAffineTransformMake(oldMatrix.a, oldMatrix.b, oldMatrix.c, oldMatrix.d, newMatrix.tx, oldMatrix.ty)
            combinedChartView.viewPortHandler.refresh(newMatrix: currentMatrix, chart: combinedChartView, invalidate: true)
        }
     }
     
     HOW DO I THIS WORK WHAAAAAAAAAT
     
     
     What might work: One graph only shifts the one below it.
     
     
     */
    
    /*
    
    func translateCharts (chartView: CombinedChartView) {
        if chartView == lineChart1 {
            let newMatrix = lineChart1.viewPortHandler.touchMatrix
            
            let oldMatrix2 = lineChart2.viewPortHandler.touchMatrix
            let currentMatrix2 = CGAffineTransform(a: oldMatrix2.a, b: oldMatrix2.b, c: oldMatrix2.c, d: oldMatrix2.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart2.viewPortHandler.refresh(newMatrix: currentMatrix2, chart: lineChart2, invalidate: true)
            
            let oldMatrix3 = lineChart3.viewPortHandler.touchMatrix
            let currentMatrix3 = CGAffineTransform(a: oldMatrix3.a, b: oldMatrix3.b, c: oldMatrix3.c, d: oldMatrix3.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart3.viewPortHandler.refresh(newMatrix: currentMatrix3, chart: lineChart3, invalidate: true)
            
            let oldMatrix4 = lineChart4.viewPortHandler.touchMatrix
            let currentMatrix4 = CGAffineTransform(a: oldMatrix4.a, b: oldMatrix4.b, c: oldMatrix4.c, d: oldMatrix4.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart4.viewPortHandler.refresh(newMatrix: currentMatrix4, chart: lineChart4, invalidate: true)
            
            let oldMatrix5 = lineChart5.viewPortHandler.touchMatrix
            let currentMatrix5 = CGAffineTransform(a: oldMatrix5.a, b: oldMatrix5.b, c: oldMatrix5.c, d: oldMatrix5.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart5.viewPortHandler.refresh(newMatrix: currentMatrix5, chart: lineChart5, invalidate: true)
            
            let oldMatrix6 = lineChart6.viewPortHandler.touchMatrix
            let currentMatrix6 = CGAffineTransform(a: oldMatrix6.a, b: oldMatrix6.b, c: oldMatrix6.c, d: oldMatrix6.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart6.viewPortHandler.refresh(newMatrix: currentMatrix6, chart: lineChart6, invalidate: true)
            
            let oldMatrix7 = lineChart3.viewPortHandler.touchMatrix
            let currentMatrix7 = CGAffineTransform(a: oldMatrix7.a, b: oldMatrix7.b, c: oldMatrix7.c, d: oldMatrix7.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart7.viewPortHandler.refresh(newMatrix: currentMatrix7, chart: lineChart7, invalidate: true)
            
            let oldMatrix8 = lineChart8.viewPortHandler.touchMatrix
            let currentMatrix8 = CGAffineTransform(a: oldMatrix8.a, b: oldMatrix8.b, c: oldMatrix8.c, d: oldMatrix8.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart8.viewPortHandler.refresh(newMatrix: currentMatrix8, chart: lineChart8, invalidate: true)
            
            let oldMatrix9 = lineChart9.viewPortHandler.touchMatrix
            let currentMatrix9 = CGAffineTransform(a: oldMatrix9.a, b: oldMatrix9.b, c: oldMatrix9.c, d: oldMatrix9.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart9.viewPortHandler.refresh(newMatrix: currentMatrix9, chart: lineChart9, invalidate: true)
            
            let oldMatrix10 = lineChart10.viewPortHandler.touchMatrix
            let currentMatrix10 = CGAffineTransform(a: oldMatrix10.a, b: oldMatrix10.b, c: oldMatrix10.c, d: oldMatrix10.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart10.viewPortHandler.refresh(newMatrix: currentMatrix10, chart: lineChart10, invalidate: true)
            
            let oldMatrix11 = lineChart11.viewPortHandler.touchMatrix
            let currentMatrix11 = CGAffineTransform(a: oldMatrix11.a, b: oldMatrix11.b, c: oldMatrix11.c, d: oldMatrix11.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart11.viewPortHandler.refresh(newMatrix: currentMatrix11, chart: lineChart11, invalidate: true)
            
            let oldMatrix12 = lineChart12.viewPortHandler.touchMatrix
            let currentMatrix12 = CGAffineTransform(a: oldMatrix12.a, b: oldMatrix12.b, c: oldMatrix12.c, d: oldMatrix12.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart12.viewPortHandler.refresh(newMatrix: currentMatrix12, chart: lineChart12, invalidate: true)
            
            let oldMatrix13 = lineChart13.viewPortHandler.touchMatrix
            let currentMatrix13 = CGAffineTransform(a: oldMatrix13.a, b: oldMatrix13.b, c: oldMatrix13.c, d: oldMatrix13.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart13.viewPortHandler.refresh(newMatrix: currentMatrix13, chart: lineChart13, invalidate: true)
            
            let oldMatrix14 = lineChart14.viewPortHandler.touchMatrix
            let currentMatrix14 = CGAffineTransform(a: oldMatrix14.a, b: oldMatrix14.b, c: oldMatrix14.c, d: oldMatrix14.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart14.viewPortHandler.refresh(newMatrix: currentMatrix14, chart: lineChart14, invalidate: true)
            
            let oldMatrix15 = lineChart15.viewPortHandler.touchMatrix
            let currentMatrix15 = CGAffineTransform(a: oldMatrix15.a, b: oldMatrix15.b, c: oldMatrix15.c, d: oldMatrix15.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart15.viewPortHandler.refresh(newMatrix: currentMatrix15, chart: lineChart15, invalidate: true)
            
            let oldMatrix16 = lineChart16.viewPortHandler.touchMatrix
            let currentMatrix16 = CGAffineTransform(a: oldMatrix16.a, b: oldMatrix16.b, c: oldMatrix16.c, d: oldMatrix16.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart16.viewPortHandler.refresh(newMatrix: currentMatrix16, chart: lineChart16, invalidate: true)
            
        } else if chartView == lineChart2 {
            let newMatrix = lineChart2.viewPortHandler.touchMatrix
            
            let oldMatrix1 = lineChart1.viewPortHandler.touchMatrix
            let currentMatrix1 = CGAffineTransform(a: oldMatrix1.a, b: oldMatrix1.b, c: oldMatrix1.c, d: oldMatrix1.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart1.viewPortHandler.refresh(newMatrix: currentMatrix1, chart: lineChart1, invalidate: true)
            
            let oldMatrix3 = lineChart3.viewPortHandler.touchMatrix
            let currentMatrix3 = CGAffineTransform(a: oldMatrix3.a, b: oldMatrix3.b, c: oldMatrix3.c, d: oldMatrix3.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart3.viewPortHandler.refresh(newMatrix: currentMatrix3, chart: lineChart3, invalidate: true)
            
            let oldMatrix4 = lineChart4.viewPortHandler.touchMatrix
            let currentMatrix4 = CGAffineTransform(a: oldMatrix4.a, b: oldMatrix4.b, c: oldMatrix4.c, d: oldMatrix4.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart4.viewPortHandler.refresh(newMatrix: currentMatrix4, chart: lineChart4, invalidate: true)
            
            let oldMatrix5 = lineChart5.viewPortHandler.touchMatrix
            let currentMatrix5 = CGAffineTransform(a: oldMatrix5.a, b: oldMatrix5.b, c: oldMatrix5.c, d: oldMatrix5.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart5.viewPortHandler.refresh(newMatrix: currentMatrix5, chart: lineChart5, invalidate: true)
            
            let oldMatrix6 = lineChart6.viewPortHandler.touchMatrix
            let currentMatrix6 = CGAffineTransform(a: oldMatrix6.a, b: oldMatrix6.b, c: oldMatrix6.c, d: oldMatrix6.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart6.viewPortHandler.refresh(newMatrix: currentMatrix6, chart: lineChart6, invalidate: true)
            
            let oldMatrix7 = lineChart7.viewPortHandler.touchMatrix
            let currentMatrix7 = CGAffineTransform(a: oldMatrix7.a, b: oldMatrix7.b, c: oldMatrix7.c, d: oldMatrix7.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart7.viewPortHandler.refresh(newMatrix: currentMatrix7, chart: lineChart7, invalidate: true)
            
            let oldMatrix8 = lineChart8.viewPortHandler.touchMatrix
            let currentMatrix8 = CGAffineTransform(a: oldMatrix8.a, b: oldMatrix8.b, c: oldMatrix8.c, d: oldMatrix8.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart8.viewPortHandler.refresh(newMatrix: currentMatrix8, chart: lineChart8, invalidate: true)
            
            let oldMatrix9 = lineChart9.viewPortHandler.touchMatrix
            let currentMatrix9 = CGAffineTransform(a: oldMatrix9.a, b: oldMatrix9.b, c: oldMatrix9.c, d: oldMatrix9.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart9.viewPortHandler.refresh(newMatrix: currentMatrix9, chart: lineChart9, invalidate: true)
            
            let oldMatrix10 = lineChart10.viewPortHandler.touchMatrix
            let currentMatrix10 = CGAffineTransform(a: oldMatrix10.a, b: oldMatrix10.b, c: oldMatrix10.c, d: oldMatrix10.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart10.viewPortHandler.refresh(newMatrix: currentMatrix10, chart: lineChart10, invalidate: true)
            
            let oldMatrix11 = lineChart11.viewPortHandler.touchMatrix
            let currentMatrix11 = CGAffineTransform(a: oldMatrix11.a, b: oldMatrix11.b, c: oldMatrix11.c, d: oldMatrix11.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart11.viewPortHandler.refresh(newMatrix: currentMatrix11, chart: lineChart11, invalidate: true)
            
            let oldMatrix12 = lineChart12.viewPortHandler.touchMatrix
            let currentMatrix12 = CGAffineTransform(a: oldMatrix12.a, b: oldMatrix12.b, c: oldMatrix12.c, d: oldMatrix12.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart12.viewPortHandler.refresh(newMatrix: currentMatrix12, chart: lineChart12, invalidate: true)
            
            let oldMatrix13 = lineChart13.viewPortHandler.touchMatrix
            let currentMatrix13 = CGAffineTransform(a: oldMatrix13.a, b: oldMatrix13.b, c: oldMatrix13.c, d: oldMatrix13.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart13.viewPortHandler.refresh(newMatrix: currentMatrix13, chart: lineChart13, invalidate: true)
            
            let oldMatrix14 = lineChart14.viewPortHandler.touchMatrix
            let currentMatrix14 = CGAffineTransform(a: oldMatrix14.a, b: oldMatrix14.b, c: oldMatrix14.c, d: oldMatrix14.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart14.viewPortHandler.refresh(newMatrix: currentMatrix14, chart: lineChart14, invalidate: true)
            
            let oldMatrix15 = lineChart15.viewPortHandler.touchMatrix
            let currentMatrix15 = CGAffineTransform(a: oldMatrix15.a, b: oldMatrix15.b, c: oldMatrix15.c, d: oldMatrix15.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart15.viewPortHandler.refresh(newMatrix: currentMatrix15, chart: lineChart15, invalidate: true)
            
            let oldMatrix16 = lineChart16.viewPortHandler.touchMatrix
            let currentMatrix16 = CGAffineTransform(a: oldMatrix16.a, b: oldMatrix16.b, c: oldMatrix16.c, d: oldMatrix16.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart16.viewPortHandler.refresh(newMatrix: currentMatrix16, chart: lineChart16, invalidate: true)
            
        } else if chartView == lineChart3 {
            let newMatrix = lineChart3.viewPortHandler.touchMatrix
            
            let oldMatrix1 = lineChart1.viewPortHandler.touchMatrix
            let currentMatrix1 = CGAffineTransform(a: oldMatrix1.a, b: oldMatrix1.b, c: oldMatrix1.c, d: oldMatrix1.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart1.viewPortHandler.refresh(newMatrix: currentMatrix1, chart: lineChart1, invalidate: true)
            
            let oldMatrix2 = lineChart2.viewPortHandler.touchMatrix
            let currentMatrix2 = CGAffineTransform(a: oldMatrix2.a, b: oldMatrix2.b, c: oldMatrix2.c, d: oldMatrix2.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart2.viewPortHandler.refresh(newMatrix: currentMatrix2, chart: lineChart2, invalidate: true)
            
            let oldMatrix4 = lineChart4.viewPortHandler.touchMatrix
            let currentMatrix4 = CGAffineTransform(a: oldMatrix4.a, b: oldMatrix4.b, c: oldMatrix4.c, d: oldMatrix4.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart4.viewPortHandler.refresh(newMatrix: currentMatrix4, chart: lineChart4, invalidate: true)
            
            let oldMatrix5 = lineChart5.viewPortHandler.touchMatrix
            let currentMatrix5 = CGAffineTransform(a: oldMatrix5.a, b: oldMatrix5.b, c: oldMatrix5.c, d: oldMatrix5.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart5.viewPortHandler.refresh(newMatrix: currentMatrix5, chart: lineChart5, invalidate: true)
            
            let oldMatrix6 = lineChart6.viewPortHandler.touchMatrix
            let currentMatrix6 = CGAffineTransform(a: oldMatrix6.a, b: oldMatrix6.b, c: oldMatrix6.c, d: oldMatrix6.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart6.viewPortHandler.refresh(newMatrix: currentMatrix6, chart: lineChart6, invalidate: true)
            
            let oldMatrix7 = lineChart7.viewPortHandler.touchMatrix
            let currentMatrix7 = CGAffineTransform(a: oldMatrix7.a, b: oldMatrix7.b, c: oldMatrix7.c, d: oldMatrix7.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart7.viewPortHandler.refresh(newMatrix: currentMatrix7, chart: lineChart7, invalidate: true)
            
            let oldMatrix8 = lineChart8.viewPortHandler.touchMatrix
            let currentMatrix8 = CGAffineTransform(a: oldMatrix8.a, b: oldMatrix8.b, c: oldMatrix8.c, d: oldMatrix8.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart8.viewPortHandler.refresh(newMatrix: currentMatrix8, chart: lineChart8, invalidate: true)
            
            let oldMatrix9 = lineChart9.viewPortHandler.touchMatrix
            let currentMatrix9 = CGAffineTransform(a: oldMatrix9.a, b: oldMatrix9.b, c: oldMatrix9.c, d: oldMatrix9.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart9.viewPortHandler.refresh(newMatrix: currentMatrix9, chart: lineChart9, invalidate: true)
            
            let oldMatrix10 = lineChart10.viewPortHandler.touchMatrix
            let currentMatrix10 = CGAffineTransform(a: oldMatrix10.a, b: oldMatrix10.b, c: oldMatrix10.c, d: oldMatrix10.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart10.viewPortHandler.refresh(newMatrix: currentMatrix10, chart: lineChart10, invalidate: true)
            
            let oldMatrix11 = lineChart11.viewPortHandler.touchMatrix
            let currentMatrix11 = CGAffineTransform(a: oldMatrix11.a, b: oldMatrix11.b, c: oldMatrix11.c, d: oldMatrix11.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart11.viewPortHandler.refresh(newMatrix: currentMatrix11, chart: lineChart11, invalidate: true)
            
            let oldMatrix12 = lineChart12.viewPortHandler.touchMatrix
            let currentMatrix12 = CGAffineTransform(a: oldMatrix12.a, b: oldMatrix12.b, c: oldMatrix12.c, d: oldMatrix12.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart12.viewPortHandler.refresh(newMatrix: currentMatrix12, chart: lineChart12, invalidate: true)
            
            let oldMatrix13 = lineChart13.viewPortHandler.touchMatrix
            let currentMatrix13 = CGAffineTransform(a: oldMatrix13.a, b: oldMatrix13.b, c: oldMatrix13.c, d: oldMatrix13.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart13.viewPortHandler.refresh(newMatrix: currentMatrix13, chart: lineChart13, invalidate: true)
            
            let oldMatrix14 = lineChart14.viewPortHandler.touchMatrix
            let currentMatrix14 = CGAffineTransform(a: oldMatrix14.a, b: oldMatrix14.b, c: oldMatrix14.c, d: oldMatrix14.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart14.viewPortHandler.refresh(newMatrix: currentMatrix14, chart: lineChart14, invalidate: true)
            
            let oldMatrix15 = lineChart15.viewPortHandler.touchMatrix
            let currentMatrix15 = CGAffineTransform(a: oldMatrix15.a, b: oldMatrix15.b, c: oldMatrix15.c, d: oldMatrix15.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart15.viewPortHandler.refresh(newMatrix: currentMatrix15, chart: lineChart15, invalidate: true)
            
            let oldMatrix16 = lineChart16.viewPortHandler.touchMatrix
            let currentMatrix16 = CGAffineTransform(a: oldMatrix16.a, b: oldMatrix16.b, c: oldMatrix16.c, d: oldMatrix16.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart16.viewPortHandler.refresh(newMatrix: currentMatrix16, chart: lineChart16, invalidate: true)
            
        } else if chartView == lineChart4 {
            let newMatrix = lineChart4.viewPortHandler.touchMatrix
            
            let oldMatrix1 = lineChart1.viewPortHandler.touchMatrix
            let currentMatrix1 = CGAffineTransform(a: oldMatrix1.a, b: oldMatrix1.b, c: oldMatrix1.c, d: oldMatrix1.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart1.viewPortHandler.refresh(newMatrix: currentMatrix1, chart: lineChart1, invalidate: true)
            
            let oldMatrix2 = lineChart2.viewPortHandler.touchMatrix
            let currentMatrix2 = CGAffineTransform(a: oldMatrix2.a, b: oldMatrix2.b, c: oldMatrix2.c, d: oldMatrix2.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart2.viewPortHandler.refresh(newMatrix: currentMatrix2, chart: lineChart2, invalidate: true)
            
            let oldMatrix3 = lineChart3.viewPortHandler.touchMatrix
            let currentMatrix3 = CGAffineTransform(a: oldMatrix3.a, b: oldMatrix3.b, c: oldMatrix3.c, d: oldMatrix3.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart3.viewPortHandler.refresh(newMatrix: currentMatrix3, chart: lineChart3, invalidate: true)
            
            let oldMatrix5 = lineChart5.viewPortHandler.touchMatrix
            let currentMatrix5 = CGAffineTransform(a: oldMatrix5.a, b: oldMatrix5.b, c: oldMatrix5.c, d: oldMatrix5.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart5.viewPortHandler.refresh(newMatrix: currentMatrix5, chart: lineChart5, invalidate: true)
            
            let oldMatrix6 = lineChart6.viewPortHandler.touchMatrix
            let currentMatrix6 = CGAffineTransform(a: oldMatrix6.a, b: oldMatrix6.b, c: oldMatrix6.c, d: oldMatrix6.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart6.viewPortHandler.refresh(newMatrix: currentMatrix6, chart: lineChart6, invalidate: true)
            
            let oldMatrix7 = lineChart7.viewPortHandler.touchMatrix
            let currentMatrix7 = CGAffineTransform(a: oldMatrix7.a, b: oldMatrix7.b, c: oldMatrix7.c, d: oldMatrix7.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart7.viewPortHandler.refresh(newMatrix: currentMatrix7, chart: lineChart7, invalidate: true)
            
            let oldMatrix8 = lineChart8.viewPortHandler.touchMatrix
            let currentMatrix8 = CGAffineTransform(a: oldMatrix8.a, b: oldMatrix8.b, c: oldMatrix8.c, d: oldMatrix8.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart8.viewPortHandler.refresh(newMatrix: currentMatrix8, chart: lineChart8, invalidate: true)
            
            let oldMatrix9 = lineChart9.viewPortHandler.touchMatrix
            let currentMatrix9 = CGAffineTransform(a: oldMatrix9.a, b: oldMatrix9.b, c: oldMatrix9.c, d: oldMatrix9.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart9.viewPortHandler.refresh(newMatrix: currentMatrix9, chart: lineChart9, invalidate: true)
            
            let oldMatrix10 = lineChart10.viewPortHandler.touchMatrix
            let currentMatrix10 = CGAffineTransform(a: oldMatrix10.a, b: oldMatrix10.b, c: oldMatrix10.c, d: oldMatrix10.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart10.viewPortHandler.refresh(newMatrix: currentMatrix10, chart: lineChart10, invalidate: true)
            
            let oldMatrix11 = lineChart11.viewPortHandler.touchMatrix
            let currentMatrix11 = CGAffineTransform(a: oldMatrix11.a, b: oldMatrix11.b, c: oldMatrix11.c, d: oldMatrix11.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart11.viewPortHandler.refresh(newMatrix: currentMatrix11, chart: lineChart11, invalidate: true)
            
            let oldMatrix12 = lineChart12.viewPortHandler.touchMatrix
            let currentMatrix12 = CGAffineTransform(a: oldMatrix12.a, b: oldMatrix12.b, c: oldMatrix12.c, d: oldMatrix12.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart12.viewPortHandler.refresh(newMatrix: currentMatrix12, chart: lineChart12, invalidate: true)
            
            let oldMatrix13 = lineChart13.viewPortHandler.touchMatrix
            let currentMatrix13 = CGAffineTransform(a: oldMatrix13.a, b: oldMatrix13.b, c: oldMatrix13.c, d: oldMatrix13.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart13.viewPortHandler.refresh(newMatrix: currentMatrix13, chart: lineChart13, invalidate: true)
            
            let oldMatrix14 = lineChart14.viewPortHandler.touchMatrix
            let currentMatrix14 = CGAffineTransform(a: oldMatrix14.a, b: oldMatrix14.b, c: oldMatrix14.c, d: oldMatrix14.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart14.viewPortHandler.refresh(newMatrix: currentMatrix14, chart: lineChart14, invalidate: true)
            
            let oldMatrix15 = lineChart15.viewPortHandler.touchMatrix
            let currentMatrix15 = CGAffineTransform(a: oldMatrix15.a, b: oldMatrix15.b, c: oldMatrix15.c, d: oldMatrix15.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart15.viewPortHandler.refresh(newMatrix: currentMatrix15, chart: lineChart15, invalidate: true)
            
            let oldMatrix16 = lineChart16.viewPortHandler.touchMatrix
            let currentMatrix16 = CGAffineTransform(a: oldMatrix16.a, b: oldMatrix16.b, c: oldMatrix16.c, d: oldMatrix16.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart16.viewPortHandler.refresh(newMatrix: currentMatrix16, chart: lineChart16, invalidate: true)
            
        } else if chartView == lineChart5 {
            let newMatrix = lineChart5.viewPortHandler.touchMatrix
            
            let oldMatrix1 = lineChart1.viewPortHandler.touchMatrix
            let currentMatrix1 = CGAffineTransform(a: oldMatrix1.a, b: oldMatrix1.b, c: oldMatrix1.c, d: oldMatrix1.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart1.viewPortHandler.refresh(newMatrix: currentMatrix1, chart: lineChart1, invalidate: true)
            
            let oldMatrix2 = lineChart2.viewPortHandler.touchMatrix
            let currentMatrix2 = CGAffineTransform(a: oldMatrix2.a, b: oldMatrix2.b, c: oldMatrix2.c, d: oldMatrix2.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart2.viewPortHandler.refresh(newMatrix: currentMatrix2, chart: lineChart2, invalidate: true)
            
            let oldMatrix3 = lineChart3.viewPortHandler.touchMatrix
            let currentMatrix3 = CGAffineTransform(a: oldMatrix3.a, b: oldMatrix3.b, c: oldMatrix3.c, d: oldMatrix3.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart3.viewPortHandler.refresh(newMatrix: currentMatrix3, chart: lineChart3, invalidate: true)
            
            let oldMatrix4 = lineChart4.viewPortHandler.touchMatrix
            let currentMatrix4 = CGAffineTransform(a: oldMatrix4.a, b: oldMatrix4.b, c: oldMatrix4.c, d: oldMatrix4.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart4.viewPortHandler.refresh(newMatrix: currentMatrix4, chart: lineChart4, invalidate: true)
            
            let oldMatrix6 = lineChart6.viewPortHandler.touchMatrix
            let currentMatrix6 = CGAffineTransform(a: oldMatrix6.a, b: oldMatrix6.b, c: oldMatrix6.c, d: oldMatrix6.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart6.viewPortHandler.refresh(newMatrix: currentMatrix6, chart: lineChart6, invalidate: true)
            
            let oldMatrix7 = lineChart7.viewPortHandler.touchMatrix
            let currentMatrix7 = CGAffineTransform(a: oldMatrix7.a, b: oldMatrix7.b, c: oldMatrix7.c, d: oldMatrix7.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart7.viewPortHandler.refresh(newMatrix: currentMatrix7, chart: lineChart7, invalidate: true)
            
            let oldMatrix8 = lineChart8.viewPortHandler.touchMatrix
            let currentMatrix8 = CGAffineTransform(a: oldMatrix8.a, b: oldMatrix8.b, c: oldMatrix8.c, d: oldMatrix8.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart8.viewPortHandler.refresh(newMatrix: currentMatrix8, chart: lineChart8, invalidate: true)
            
            let oldMatrix9 = lineChart9.viewPortHandler.touchMatrix
            let currentMatrix9 = CGAffineTransform(a: oldMatrix9.a, b: oldMatrix9.b, c: oldMatrix9.c, d: oldMatrix9.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart9.viewPortHandler.refresh(newMatrix: currentMatrix9, chart: lineChart9, invalidate: true)
            
            let oldMatrix10 = lineChart10.viewPortHandler.touchMatrix
            let currentMatrix10 = CGAffineTransform(a: oldMatrix10.a, b: oldMatrix10.b, c: oldMatrix10.c, d: oldMatrix10.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart10.viewPortHandler.refresh(newMatrix: currentMatrix10, chart: lineChart10, invalidate: true)
            
            let oldMatrix11 = lineChart11.viewPortHandler.touchMatrix
            let currentMatrix11 = CGAffineTransform(a: oldMatrix11.a, b: oldMatrix11.b, c: oldMatrix11.c, d: oldMatrix11.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart11.viewPortHandler.refresh(newMatrix: currentMatrix11, chart: lineChart11, invalidate: true)
            
            let oldMatrix12 = lineChart12.viewPortHandler.touchMatrix
            let currentMatrix12 = CGAffineTransform(a: oldMatrix12.a, b: oldMatrix12.b, c: oldMatrix12.c, d: oldMatrix12.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart12.viewPortHandler.refresh(newMatrix: currentMatrix12, chart: lineChart12, invalidate: true)
            
            let oldMatrix13 = lineChart13.viewPortHandler.touchMatrix
            let currentMatrix13 = CGAffineTransform(a: oldMatrix13.a, b: oldMatrix13.b, c: oldMatrix13.c, d: oldMatrix13.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart13.viewPortHandler.refresh(newMatrix: currentMatrix13, chart: lineChart13, invalidate: true)
            
            let oldMatrix14 = lineChart14.viewPortHandler.touchMatrix
            let currentMatrix14 = CGAffineTransform(a: oldMatrix14.a, b: oldMatrix14.b, c: oldMatrix14.c, d: oldMatrix14.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart14.viewPortHandler.refresh(newMatrix: currentMatrix14, chart: lineChart14, invalidate: true)
            
            let oldMatrix15 = lineChart15.viewPortHandler.touchMatrix
            let currentMatrix15 = CGAffineTransform(a: oldMatrix15.a, b: oldMatrix15.b, c: oldMatrix15.c, d: oldMatrix15.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart15.viewPortHandler.refresh(newMatrix: currentMatrix15, chart: lineChart15, invalidate: true)
            
            let oldMatrix16 = lineChart16.viewPortHandler.touchMatrix
            let currentMatrix16 = CGAffineTransform(a: oldMatrix16.a, b: oldMatrix16.b, c: oldMatrix16.c, d: oldMatrix16.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart16.viewPortHandler.refresh(newMatrix: currentMatrix16, chart: lineChart16, invalidate: true)
            
        } else if chartView == lineChart6 {
            let newMatrix = lineChart6.viewPortHandler.touchMatrix
            
            let oldMatrix1 = lineChart1.viewPortHandler.touchMatrix
            let currentMatrix1 = CGAffineTransform(a: oldMatrix1.a, b: oldMatrix1.b, c: oldMatrix1.c, d: oldMatrix1.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart1.viewPortHandler.refresh(newMatrix: currentMatrix1, chart: lineChart1, invalidate: true)
            
            let oldMatrix2 = lineChart2.viewPortHandler.touchMatrix
            let currentMatrix2 = CGAffineTransform(a: oldMatrix2.a, b: oldMatrix2.b, c: oldMatrix2.c, d: oldMatrix2.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart2.viewPortHandler.refresh(newMatrix: currentMatrix2, chart: lineChart2, invalidate: true)
            
            let oldMatrix3 = lineChart3.viewPortHandler.touchMatrix
            let currentMatrix3 = CGAffineTransform(a: oldMatrix3.a, b: oldMatrix3.b, c: oldMatrix3.c, d: oldMatrix3.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart3.viewPortHandler.refresh(newMatrix: currentMatrix3, chart: lineChart3, invalidate: true)
            
            let oldMatrix4 = lineChart4.viewPortHandler.touchMatrix
            let currentMatrix4 = CGAffineTransform(a: oldMatrix4.a, b: oldMatrix4.b, c: oldMatrix4.c, d: oldMatrix4.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart4.viewPortHandler.refresh(newMatrix: currentMatrix4, chart: lineChart4, invalidate: true)
            
            let oldMatrix5 = lineChart5.viewPortHandler.touchMatrix
            let currentMatrix5 = CGAffineTransform(a: oldMatrix5.a, b: oldMatrix5.b, c: oldMatrix5.c, d: oldMatrix5.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart5.viewPortHandler.refresh(newMatrix: currentMatrix5, chart: lineChart5, invalidate: true)
            
            let oldMatrix7 = lineChart7.viewPortHandler.touchMatrix
            let currentMatrix7 = CGAffineTransform(a: oldMatrix7.a, b: oldMatrix7.b, c: oldMatrix7.c, d: oldMatrix7.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart7.viewPortHandler.refresh(newMatrix: currentMatrix7, chart: lineChart7, invalidate: true)
            
            let oldMatrix8 = lineChart8.viewPortHandler.touchMatrix
            let currentMatrix8 = CGAffineTransform(a: oldMatrix8.a, b: oldMatrix8.b, c: oldMatrix8.c, d: oldMatrix8.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart8.viewPortHandler.refresh(newMatrix: currentMatrix8, chart: lineChart8, invalidate: true)
            
            let oldMatrix9 = lineChart9.viewPortHandler.touchMatrix
            let currentMatrix9 = CGAffineTransform(a: oldMatrix9.a, b: oldMatrix9.b, c: oldMatrix9.c, d: oldMatrix9.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart9.viewPortHandler.refresh(newMatrix: currentMatrix9, chart: lineChart9, invalidate: true)
            
            let oldMatrix10 = lineChart10.viewPortHandler.touchMatrix
            let currentMatrix10 = CGAffineTransform(a: oldMatrix10.a, b: oldMatrix10.b, c: oldMatrix10.c, d: oldMatrix10.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart10.viewPortHandler.refresh(newMatrix: currentMatrix10, chart: lineChart10, invalidate: true)
            
            let oldMatrix11 = lineChart11.viewPortHandler.touchMatrix
            let currentMatrix11 = CGAffineTransform(a: oldMatrix11.a, b: oldMatrix11.b, c: oldMatrix11.c, d: oldMatrix11.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart11.viewPortHandler.refresh(newMatrix: currentMatrix11, chart: lineChart11, invalidate: true)
            
            let oldMatrix12 = lineChart12.viewPortHandler.touchMatrix
            let currentMatrix12 = CGAffineTransform(a: oldMatrix12.a, b: oldMatrix12.b, c: oldMatrix12.c, d: oldMatrix12.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart12.viewPortHandler.refresh(newMatrix: currentMatrix12, chart: lineChart12, invalidate: true)
            
            let oldMatrix13 = lineChart13.viewPortHandler.touchMatrix
            let currentMatrix13 = CGAffineTransform(a: oldMatrix13.a, b: oldMatrix13.b, c: oldMatrix13.c, d: oldMatrix13.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart13.viewPortHandler.refresh(newMatrix: currentMatrix13, chart: lineChart13, invalidate: true)
            
            let oldMatrix14 = lineChart14.viewPortHandler.touchMatrix
            let currentMatrix14 = CGAffineTransform(a: oldMatrix14.a, b: oldMatrix14.b, c: oldMatrix14.c, d: oldMatrix14.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart14.viewPortHandler.refresh(newMatrix: currentMatrix14, chart: lineChart14, invalidate: true)
            
            let oldMatrix15 = lineChart15.viewPortHandler.touchMatrix
            let currentMatrix15 = CGAffineTransform(a: oldMatrix15.a, b: oldMatrix15.b, c: oldMatrix15.c, d: oldMatrix15.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart15.viewPortHandler.refresh(newMatrix: currentMatrix15, chart: lineChart15, invalidate: true)
            
            let oldMatrix16 = lineChart16.viewPortHandler.touchMatrix
            let currentMatrix16 = CGAffineTransform(a: oldMatrix16.a, b: oldMatrix16.b, c: oldMatrix16.c, d: oldMatrix16.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart16.viewPortHandler.refresh(newMatrix: currentMatrix16, chart: lineChart16, invalidate: true)
            
        } else if chartView == lineChart7 {
            let newMatrix = lineChart7.viewPortHandler.touchMatrix
            
            let oldMatrix1 = lineChart1.viewPortHandler.touchMatrix
            let currentMatrix1 = CGAffineTransform(a: oldMatrix1.a, b: oldMatrix1.b, c: oldMatrix1.c, d: oldMatrix1.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart1.viewPortHandler.refresh(newMatrix: currentMatrix1, chart: lineChart1, invalidate: true)
            
            let oldMatrix2 = lineChart2.viewPortHandler.touchMatrix
            let currentMatrix2 = CGAffineTransform(a: oldMatrix2.a, b: oldMatrix2.b, c: oldMatrix2.c, d: oldMatrix2.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart2.viewPortHandler.refresh(newMatrix: currentMatrix2, chart: lineChart2, invalidate: true)
            
            let oldMatrix3 = lineChart3.viewPortHandler.touchMatrix
            let currentMatrix3 = CGAffineTransform(a: oldMatrix3.a, b: oldMatrix3.b, c: oldMatrix3.c, d: oldMatrix3.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart3.viewPortHandler.refresh(newMatrix: currentMatrix3, chart: lineChart3, invalidate: true)
            
            let oldMatrix4 = lineChart4.viewPortHandler.touchMatrix
            let currentMatrix4 = CGAffineTransform(a: oldMatrix4.a, b: oldMatrix4.b, c: oldMatrix4.c, d: oldMatrix4.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart4.viewPortHandler.refresh(newMatrix: currentMatrix4, chart: lineChart4, invalidate: true)
            
            let oldMatrix5 = lineChart5.viewPortHandler.touchMatrix
            let currentMatrix5 = CGAffineTransform(a: oldMatrix5.a, b: oldMatrix5.b, c: oldMatrix5.c, d: oldMatrix5.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart5.viewPortHandler.refresh(newMatrix: currentMatrix5, chart: lineChart5, invalidate: true)
            
            let oldMatrix6 = lineChart6.viewPortHandler.touchMatrix
            let currentMatrix6 = CGAffineTransform(a: oldMatrix6.a, b: oldMatrix6.b, c: oldMatrix6.c, d: oldMatrix6.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart6.viewPortHandler.refresh(newMatrix: currentMatrix6, chart: lineChart6, invalidate: true)
            
            let oldMatrix8 = lineChart8.viewPortHandler.touchMatrix
            let currentMatrix8 = CGAffineTransform(a: oldMatrix8.a, b: oldMatrix8.b, c: oldMatrix8.c, d: oldMatrix8.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart8.viewPortHandler.refresh(newMatrix: currentMatrix8, chart: lineChart8, invalidate: true)
            
            let oldMatrix9 = lineChart9.viewPortHandler.touchMatrix
            let currentMatrix9 = CGAffineTransform(a: oldMatrix9.a, b: oldMatrix9.b, c: oldMatrix9.c, d: oldMatrix9.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart9.viewPortHandler.refresh(newMatrix: currentMatrix9, chart: lineChart9, invalidate: true)
            
            let oldMatrix10 = lineChart10.viewPortHandler.touchMatrix
            let currentMatrix10 = CGAffineTransform(a: oldMatrix10.a, b: oldMatrix10.b, c: oldMatrix10.c, d: oldMatrix10.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart10.viewPortHandler.refresh(newMatrix: currentMatrix10, chart: lineChart10, invalidate: true)
            
            let oldMatrix11 = lineChart11.viewPortHandler.touchMatrix
            let currentMatrix11 = CGAffineTransform(a: oldMatrix11.a, b: oldMatrix11.b, c: oldMatrix11.c, d: oldMatrix11.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart11.viewPortHandler.refresh(newMatrix: currentMatrix11, chart: lineChart11, invalidate: true)
            
            let oldMatrix12 = lineChart12.viewPortHandler.touchMatrix
            let currentMatrix12 = CGAffineTransform(a: oldMatrix12.a, b: oldMatrix12.b, c: oldMatrix12.c, d: oldMatrix12.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart12.viewPortHandler.refresh(newMatrix: currentMatrix12, chart: lineChart12, invalidate: true)
            
            let oldMatrix13 = lineChart13.viewPortHandler.touchMatrix
            let currentMatrix13 = CGAffineTransform(a: oldMatrix13.a, b: oldMatrix13.b, c: oldMatrix13.c, d: oldMatrix13.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart13.viewPortHandler.refresh(newMatrix: currentMatrix13, chart: lineChart13, invalidate: true)
            
            let oldMatrix14 = lineChart14.viewPortHandler.touchMatrix
            let currentMatrix14 = CGAffineTransform(a: oldMatrix14.a, b: oldMatrix14.b, c: oldMatrix14.c, d: oldMatrix14.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart14.viewPortHandler.refresh(newMatrix: currentMatrix14, chart: lineChart14, invalidate: true)
            
            let oldMatrix15 = lineChart15.viewPortHandler.touchMatrix
            let currentMatrix15 = CGAffineTransform(a: oldMatrix15.a, b: oldMatrix15.b, c: oldMatrix15.c, d: oldMatrix15.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart15.viewPortHandler.refresh(newMatrix: currentMatrix15, chart: lineChart15, invalidate: true)
            
            let oldMatrix16 = lineChart16.viewPortHandler.touchMatrix
            let currentMatrix16 = CGAffineTransform(a: oldMatrix16.a, b: oldMatrix16.b, c: oldMatrix16.c, d: oldMatrix16.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart16.viewPortHandler.refresh(newMatrix: currentMatrix16, chart: lineChart16, invalidate: true)
            
        } else if chartView == lineChart8 {
            let newMatrix = lineChart8.viewPortHandler.touchMatrix
            
            let oldMatrix1 = lineChart1.viewPortHandler.touchMatrix
            let currentMatrix1 = CGAffineTransform(a: oldMatrix1.a, b: oldMatrix1.b, c: oldMatrix1.c, d: oldMatrix1.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart1.viewPortHandler.refresh(newMatrix: currentMatrix1, chart: lineChart1, invalidate: true)
            
            let oldMatrix2 = lineChart2.viewPortHandler.touchMatrix
            let currentMatrix2 = CGAffineTransform(a: oldMatrix2.a, b: oldMatrix2.b, c: oldMatrix2.c, d: oldMatrix2.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart2.viewPortHandler.refresh(newMatrix: currentMatrix2, chart: lineChart2, invalidate: true)
            
            let oldMatrix3 = lineChart3.viewPortHandler.touchMatrix
            let currentMatrix3 = CGAffineTransform(a: oldMatrix3.a, b: oldMatrix3.b, c: oldMatrix3.c, d: oldMatrix3.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart3.viewPortHandler.refresh(newMatrix: currentMatrix3, chart: lineChart3, invalidate: true)
            
            let oldMatrix4 = lineChart4.viewPortHandler.touchMatrix
            let currentMatrix4 = CGAffineTransform(a: oldMatrix4.a, b: oldMatrix4.b, c: oldMatrix4.c, d: oldMatrix4.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart4.viewPortHandler.refresh(newMatrix: currentMatrix4, chart: lineChart4, invalidate: true)
            
            let oldMatrix5 = lineChart5.viewPortHandler.touchMatrix
            let currentMatrix5 = CGAffineTransform(a: oldMatrix5.a, b: oldMatrix5.b, c: oldMatrix5.c, d: oldMatrix5.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart5.viewPortHandler.refresh(newMatrix: currentMatrix5, chart: lineChart5, invalidate: true)
            
            let oldMatrix6 = lineChart6.viewPortHandler.touchMatrix
            let currentMatrix6 = CGAffineTransform(a: oldMatrix6.a, b: oldMatrix6.b, c: oldMatrix6.c, d: oldMatrix6.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart6.viewPortHandler.refresh(newMatrix: currentMatrix6, chart: lineChart6, invalidate: true)
            
            let oldMatrix7 = lineChart7.viewPortHandler.touchMatrix
            let currentMatrix7 = CGAffineTransform(a: oldMatrix7.a, b: oldMatrix7.b, c: oldMatrix7.c, d: oldMatrix7.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart7.viewPortHandler.refresh(newMatrix: currentMatrix7, chart: lineChart7, invalidate: true)
            
            let oldMatrix9 = lineChart9.viewPortHandler.touchMatrix
            let currentMatrix9 = CGAffineTransform(a: oldMatrix9.a, b: oldMatrix9.b, c: oldMatrix9.c, d: oldMatrix9.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart9.viewPortHandler.refresh(newMatrix: currentMatrix9, chart: lineChart9, invalidate: true)
            
            let oldMatrix10 = lineChart10.viewPortHandler.touchMatrix
            let currentMatrix10 = CGAffineTransform(a: oldMatrix10.a, b: oldMatrix10.b, c: oldMatrix10.c, d: oldMatrix10.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart10.viewPortHandler.refresh(newMatrix: currentMatrix10, chart: lineChart10, invalidate: true)
            
            let oldMatrix11 = lineChart11.viewPortHandler.touchMatrix
            let currentMatrix11 = CGAffineTransform(a: oldMatrix11.a, b: oldMatrix11.b, c: oldMatrix11.c, d: oldMatrix11.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart11.viewPortHandler.refresh(newMatrix: currentMatrix11, chart: lineChart11, invalidate: true)
            
            let oldMatrix12 = lineChart12.viewPortHandler.touchMatrix
            let currentMatrix12 = CGAffineTransform(a: oldMatrix12.a, b: oldMatrix12.b, c: oldMatrix12.c, d: oldMatrix12.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart12.viewPortHandler.refresh(newMatrix: currentMatrix12, chart: lineChart12, invalidate: true)
            
            let oldMatrix13 = lineChart13.viewPortHandler.touchMatrix
            let currentMatrix13 = CGAffineTransform(a: oldMatrix13.a, b: oldMatrix13.b, c: oldMatrix13.c, d: oldMatrix13.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart13.viewPortHandler.refresh(newMatrix: currentMatrix13, chart: lineChart13, invalidate: true)
            
            let oldMatrix14 = lineChart14.viewPortHandler.touchMatrix
            let currentMatrix14 = CGAffineTransform(a: oldMatrix14.a, b: oldMatrix14.b, c: oldMatrix14.c, d: oldMatrix14.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart14.viewPortHandler.refresh(newMatrix: currentMatrix14, chart: lineChart14, invalidate: true)
            
            let oldMatrix15 = lineChart15.viewPortHandler.touchMatrix
            let currentMatrix15 = CGAffineTransform(a: oldMatrix15.a, b: oldMatrix15.b, c: oldMatrix15.c, d: oldMatrix15.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart15.viewPortHandler.refresh(newMatrix: currentMatrix15, chart: lineChart15, invalidate: true)
            
            let oldMatrix16 = lineChart16.viewPortHandler.touchMatrix
            let currentMatrix16 = CGAffineTransform(a: oldMatrix16.a, b: oldMatrix16.b, c: oldMatrix16.c, d: oldMatrix16.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart16.viewPortHandler.refresh(newMatrix: currentMatrix16, chart: lineChart16, invalidate: true)
            
        } else if chartView == lineChart9 {
            let newMatrix = lineChart9.viewPortHandler.touchMatrix
            
            let oldMatrix1 = lineChart1.viewPortHandler.touchMatrix
            let currentMatrix1 = CGAffineTransform(a: oldMatrix1.a, b: oldMatrix1.b, c: oldMatrix1.c, d: oldMatrix1.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart1.viewPortHandler.refresh(newMatrix: currentMatrix1, chart: lineChart1, invalidate: true)
            
            let oldMatrix2 = lineChart2.viewPortHandler.touchMatrix
            let currentMatrix2 = CGAffineTransform(a: oldMatrix2.a, b: oldMatrix2.b, c: oldMatrix2.c, d: oldMatrix2.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart2.viewPortHandler.refresh(newMatrix: currentMatrix2, chart: lineChart2, invalidate: true)
            
            let oldMatrix3 = lineChart3.viewPortHandler.touchMatrix
            let currentMatrix3 = CGAffineTransform(a: oldMatrix3.a, b: oldMatrix3.b, c: oldMatrix3.c, d: oldMatrix3.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart3.viewPortHandler.refresh(newMatrix: currentMatrix3, chart: lineChart3, invalidate: true)
            
            let oldMatrix4 = lineChart4.viewPortHandler.touchMatrix
            let currentMatrix4 = CGAffineTransform(a: oldMatrix4.a, b: oldMatrix4.b, c: oldMatrix4.c, d: oldMatrix4.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart4.viewPortHandler.refresh(newMatrix: currentMatrix4, chart: lineChart4, invalidate: true)
            
            let oldMatrix5 = lineChart5.viewPortHandler.touchMatrix
            let currentMatrix5 = CGAffineTransform(a: oldMatrix5.a, b: oldMatrix5.b, c: oldMatrix5.c, d: oldMatrix5.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart5.viewPortHandler.refresh(newMatrix: currentMatrix5, chart: lineChart5, invalidate: true)
            
            let oldMatrix6 = lineChart6.viewPortHandler.touchMatrix
            let currentMatrix6 = CGAffineTransform(a: oldMatrix6.a, b: oldMatrix6.b, c: oldMatrix6.c, d: oldMatrix6.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart6.viewPortHandler.refresh(newMatrix: currentMatrix6, chart: lineChart6, invalidate: true)
            
            let oldMatrix7 = lineChart7.viewPortHandler.touchMatrix
            let currentMatrix7 = CGAffineTransform(a: oldMatrix7.a, b: oldMatrix7.b, c: oldMatrix7.c, d: oldMatrix7.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart7.viewPortHandler.refresh(newMatrix: currentMatrix7, chart: lineChart7, invalidate: true)
            
            let oldMatrix8 = lineChart8.viewPortHandler.touchMatrix
            let currentMatrix8 = CGAffineTransform(a: oldMatrix8.a, b: oldMatrix8.b, c: oldMatrix8.c, d: oldMatrix8.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart8.viewPortHandler.refresh(newMatrix: currentMatrix8, chart: lineChart8, invalidate: true)
            
            let oldMatrix10 = lineChart10.viewPortHandler.touchMatrix
            let currentMatrix10 = CGAffineTransform(a: oldMatrix10.a, b: oldMatrix10.b, c: oldMatrix10.c, d: oldMatrix10.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart10.viewPortHandler.refresh(newMatrix: currentMatrix10, chart: lineChart10, invalidate: true)
            
            let oldMatrix11 = lineChart11.viewPortHandler.touchMatrix
            let currentMatrix11 = CGAffineTransform(a: oldMatrix11.a, b: oldMatrix11.b, c: oldMatrix11.c, d: oldMatrix11.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart11.viewPortHandler.refresh(newMatrix: currentMatrix11, chart: lineChart11, invalidate: true)
            
            let oldMatrix12 = lineChart12.viewPortHandler.touchMatrix
            let currentMatrix12 = CGAffineTransform(a: oldMatrix12.a, b: oldMatrix12.b, c: oldMatrix12.c, d: oldMatrix12.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart12.viewPortHandler.refresh(newMatrix: currentMatrix12, chart: lineChart12, invalidate: true)
            
            let oldMatrix13 = lineChart13.viewPortHandler.touchMatrix
            let currentMatrix13 = CGAffineTransform(a: oldMatrix13.a, b: oldMatrix13.b, c: oldMatrix13.c, d: oldMatrix13.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart13.viewPortHandler.refresh(newMatrix: currentMatrix13, chart: lineChart13, invalidate: true)
            
            let oldMatrix14 = lineChart14.viewPortHandler.touchMatrix
            let currentMatrix14 = CGAffineTransform(a: oldMatrix14.a, b: oldMatrix14.b, c: oldMatrix14.c, d: oldMatrix14.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart14.viewPortHandler.refresh(newMatrix: currentMatrix14, chart: lineChart14, invalidate: true)
            
            let oldMatrix15 = lineChart15.viewPortHandler.touchMatrix
            let currentMatrix15 = CGAffineTransform(a: oldMatrix15.a, b: oldMatrix15.b, c: oldMatrix15.c, d: oldMatrix15.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart15.viewPortHandler.refresh(newMatrix: currentMatrix15, chart: lineChart15, invalidate: true)
            
            let oldMatrix16 = lineChart16.viewPortHandler.touchMatrix
            let currentMatrix16 = CGAffineTransform(a: oldMatrix16.a, b: oldMatrix16.b, c: oldMatrix16.c, d: oldMatrix16.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart16.viewPortHandler.refresh(newMatrix: currentMatrix16, chart: lineChart16, invalidate: true)
            
        } else if chartView == lineChart10 {
            let newMatrix = lineChart10.viewPortHandler.touchMatrix
            
            let oldMatrix1 = lineChart1.viewPortHandler.touchMatrix
            let currentMatrix1 = CGAffineTransform(a: oldMatrix1.a, b: oldMatrix1.b, c: oldMatrix1.c, d: oldMatrix1.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart1.viewPortHandler.refresh(newMatrix: currentMatrix1, chart: lineChart1, invalidate: true)
            
            let oldMatrix2 = lineChart2.viewPortHandler.touchMatrix
            let currentMatrix2 = CGAffineTransform(a: oldMatrix2.a, b: oldMatrix2.b, c: oldMatrix2.c, d: oldMatrix2.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart2.viewPortHandler.refresh(newMatrix: currentMatrix2, chart: lineChart2, invalidate: true)
            
            let oldMatrix3 = lineChart3.viewPortHandler.touchMatrix
            let currentMatrix3 = CGAffineTransform(a: oldMatrix3.a, b: oldMatrix3.b, c: oldMatrix3.c, d: oldMatrix3.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart3.viewPortHandler.refresh(newMatrix: currentMatrix3, chart: lineChart3, invalidate: true)
            
            let oldMatrix4 = lineChart4.viewPortHandler.touchMatrix
            let currentMatrix4 = CGAffineTransform(a: oldMatrix4.a, b: oldMatrix4.b, c: oldMatrix4.c, d: oldMatrix4.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart4.viewPortHandler.refresh(newMatrix: currentMatrix4, chart: lineChart4, invalidate: true)
            
            let oldMatrix5 = lineChart5.viewPortHandler.touchMatrix
            let currentMatrix5 = CGAffineTransform(a: oldMatrix5.a, b: oldMatrix5.b, c: oldMatrix5.c, d: oldMatrix5.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart5.viewPortHandler.refresh(newMatrix: currentMatrix5, chart: lineChart5, invalidate: true)
            
            let oldMatrix6 = lineChart6.viewPortHandler.touchMatrix
            let currentMatrix6 = CGAffineTransform(a: oldMatrix6.a, b: oldMatrix6.b, c: oldMatrix6.c, d: oldMatrix6.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart6.viewPortHandler.refresh(newMatrix: currentMatrix6, chart: lineChart6, invalidate: true)
            
            let oldMatrix7 = lineChart7.viewPortHandler.touchMatrix
            let currentMatrix7 = CGAffineTransform(a: oldMatrix7.a, b: oldMatrix7.b, c: oldMatrix7.c, d: oldMatrix7.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart7.viewPortHandler.refresh(newMatrix: currentMatrix7, chart: lineChart7, invalidate: true)
            
            let oldMatrix8 = lineChart8.viewPortHandler.touchMatrix
            let currentMatrix8 = CGAffineTransform(a: oldMatrix8.a, b: oldMatrix8.b, c: oldMatrix8.c, d: oldMatrix8.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart8.viewPortHandler.refresh(newMatrix: currentMatrix8, chart: lineChart8, invalidate: true)
            
            let oldMatrix9 = lineChart9.viewPortHandler.touchMatrix
            let currentMatrix9 = CGAffineTransform(a: oldMatrix9.a, b: oldMatrix9.b, c: oldMatrix9.c, d: oldMatrix9.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart9.viewPortHandler.refresh(newMatrix: currentMatrix9, chart: lineChart9, invalidate: true)
            
            let oldMatrix11 = lineChart11.viewPortHandler.touchMatrix
            let currentMatrix11 = CGAffineTransform(a: oldMatrix11.a, b: oldMatrix11.b, c: oldMatrix11.c, d: oldMatrix11.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart11.viewPortHandler.refresh(newMatrix: currentMatrix11, chart: lineChart11, invalidate: true)
            
            let oldMatrix12 = lineChart12.viewPortHandler.touchMatrix
            let currentMatrix12 = CGAffineTransform(a: oldMatrix12.a, b: oldMatrix12.b, c: oldMatrix12.c, d: oldMatrix12.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart12.viewPortHandler.refresh(newMatrix: currentMatrix12, chart: lineChart12, invalidate: true)
            
            let oldMatrix13 = lineChart13.viewPortHandler.touchMatrix
            let currentMatrix13 = CGAffineTransform(a: oldMatrix13.a, b: oldMatrix13.b, c: oldMatrix13.c, d: oldMatrix13.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart13.viewPortHandler.refresh(newMatrix: currentMatrix13, chart: lineChart13, invalidate: true)
            
            let oldMatrix14 = lineChart14.viewPortHandler.touchMatrix
            let currentMatrix14 = CGAffineTransform(a: oldMatrix14.a, b: oldMatrix14.b, c: oldMatrix14.c, d: oldMatrix14.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart14.viewPortHandler.refresh(newMatrix: currentMatrix14, chart: lineChart14, invalidate: true)
            
            let oldMatrix15 = lineChart15.viewPortHandler.touchMatrix
            let currentMatrix15 = CGAffineTransform(a: oldMatrix15.a, b: oldMatrix15.b, c: oldMatrix15.c, d: oldMatrix15.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart15.viewPortHandler.refresh(newMatrix: currentMatrix15, chart: lineChart15, invalidate: true)
            
            let oldMatrix16 = lineChart16.viewPortHandler.touchMatrix
            let currentMatrix16 = CGAffineTransform(a: oldMatrix16.a, b: oldMatrix16.b, c: oldMatrix16.c, d: oldMatrix16.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart16.viewPortHandler.refresh(newMatrix: currentMatrix16, chart: lineChart16, invalidate: true)
            
        } else if chartView == lineChart11 {
            let newMatrix = lineChart11.viewPortHandler.touchMatrix
            
            let oldMatrix1 = lineChart1.viewPortHandler.touchMatrix
            let currentMatrix1 = CGAffineTransform(a: oldMatrix1.a, b: oldMatrix1.b, c: oldMatrix1.c, d: oldMatrix1.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart1.viewPortHandler.refresh(newMatrix: currentMatrix1, chart: lineChart1, invalidate: true)
            
            let oldMatrix2 = lineChart2.viewPortHandler.touchMatrix
            let currentMatrix2 = CGAffineTransform(a: oldMatrix2.a, b: oldMatrix2.b, c: oldMatrix2.c, d: oldMatrix2.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart2.viewPortHandler.refresh(newMatrix: currentMatrix2, chart: lineChart2, invalidate: true)
            
            let oldMatrix3 = lineChart3.viewPortHandler.touchMatrix
            let currentMatrix3 = CGAffineTransform(a: oldMatrix3.a, b: oldMatrix3.b, c: oldMatrix3.c, d: oldMatrix3.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart3.viewPortHandler.refresh(newMatrix: currentMatrix3, chart: lineChart3, invalidate: true)
            
            let oldMatrix4 = lineChart4.viewPortHandler.touchMatrix
            let currentMatrix4 = CGAffineTransform(a: oldMatrix4.a, b: oldMatrix4.b, c: oldMatrix4.c, d: oldMatrix4.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart4.viewPortHandler.refresh(newMatrix: currentMatrix4, chart: lineChart4, invalidate: true)
            
            let oldMatrix5 = lineChart5.viewPortHandler.touchMatrix
            let currentMatrix5 = CGAffineTransform(a: oldMatrix5.a, b: oldMatrix5.b, c: oldMatrix5.c, d: oldMatrix5.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart5.viewPortHandler.refresh(newMatrix: currentMatrix5, chart: lineChart5, invalidate: true)
            
            let oldMatrix6 = lineChart6.viewPortHandler.touchMatrix
            let currentMatrix6 = CGAffineTransform(a: oldMatrix6.a, b: oldMatrix6.b, c: oldMatrix6.c, d: oldMatrix6.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart6.viewPortHandler.refresh(newMatrix: currentMatrix6, chart: lineChart6, invalidate: true)
            
            let oldMatrix7 = lineChart7.viewPortHandler.touchMatrix
            let currentMatrix7 = CGAffineTransform(a: oldMatrix7.a, b: oldMatrix7.b, c: oldMatrix7.c, d: oldMatrix7.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart7.viewPortHandler.refresh(newMatrix: currentMatrix7, chart: lineChart7, invalidate: true)
            
            let oldMatrix8 = lineChart8.viewPortHandler.touchMatrix
            let currentMatrix8 = CGAffineTransform(a: oldMatrix8.a, b: oldMatrix8.b, c: oldMatrix8.c, d: oldMatrix8.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart8.viewPortHandler.refresh(newMatrix: currentMatrix8, chart: lineChart8, invalidate: true)
            
            let oldMatrix9 = lineChart9.viewPortHandler.touchMatrix
            let currentMatrix9 = CGAffineTransform(a: oldMatrix9.a, b: oldMatrix9.b, c: oldMatrix9.c, d: oldMatrix9.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart9.viewPortHandler.refresh(newMatrix: currentMatrix9, chart: lineChart9, invalidate: true)
            
            let oldMatrix10 = lineChart10.viewPortHandler.touchMatrix
            let currentMatrix10 = CGAffineTransform(a: oldMatrix10.a, b: oldMatrix10.b, c: oldMatrix10.c, d: oldMatrix10.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart10.viewPortHandler.refresh(newMatrix: currentMatrix10, chart: lineChart10, invalidate: true)
            
            let oldMatrix12 = lineChart12.viewPortHandler.touchMatrix
            let currentMatrix12 = CGAffineTransform(a: oldMatrix12.a, b: oldMatrix12.b, c: oldMatrix12.c, d: oldMatrix12.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart12.viewPortHandler.refresh(newMatrix: currentMatrix12, chart: lineChart12, invalidate: true)
            
            let oldMatrix13 = lineChart13.viewPortHandler.touchMatrix
            let currentMatrix13 = CGAffineTransform(a: oldMatrix13.a, b: oldMatrix13.b, c: oldMatrix13.c, d: oldMatrix13.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart13.viewPortHandler.refresh(newMatrix: currentMatrix13, chart: lineChart13, invalidate: true)
            
            let oldMatrix14 = lineChart14.viewPortHandler.touchMatrix
            let currentMatrix14 = CGAffineTransform(a: oldMatrix14.a, b: oldMatrix14.b, c: oldMatrix14.c, d: oldMatrix14.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart14.viewPortHandler.refresh(newMatrix: currentMatrix14, chart: lineChart14, invalidate: true)
            
            let oldMatrix15 = lineChart15.viewPortHandler.touchMatrix
            let currentMatrix15 = CGAffineTransform(a: oldMatrix15.a, b: oldMatrix15.b, c: oldMatrix15.c, d: oldMatrix15.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart15.viewPortHandler.refresh(newMatrix: currentMatrix15, chart: lineChart15, invalidate: true)
            
            let oldMatrix16 = lineChart16.viewPortHandler.touchMatrix
            let currentMatrix16 = CGAffineTransform(a: oldMatrix16.a, b: oldMatrix16.b, c: oldMatrix16.c, d: oldMatrix16.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart16.viewPortHandler.refresh(newMatrix: currentMatrix16, chart: lineChart16, invalidate: true)
            
        } else if chartView == lineChart12 {
            let newMatrix = lineChart12.viewPortHandler.touchMatrix
            
            let oldMatrix1 = lineChart1.viewPortHandler.touchMatrix
            let currentMatrix1 = CGAffineTransform(a: oldMatrix1.a, b: oldMatrix1.b, c: oldMatrix1.c, d: oldMatrix1.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart1.viewPortHandler.refresh(newMatrix: currentMatrix1, chart: lineChart1, invalidate: true)
            
            let oldMatrix2 = lineChart2.viewPortHandler.touchMatrix
            let currentMatrix2 = CGAffineTransform(a: oldMatrix2.a, b: oldMatrix2.b, c: oldMatrix2.c, d: oldMatrix2.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart2.viewPortHandler.refresh(newMatrix: currentMatrix2, chart: lineChart2, invalidate: true)
            
            let oldMatrix3 = lineChart3.viewPortHandler.touchMatrix
            let currentMatrix3 = CGAffineTransform(a: oldMatrix3.a, b: oldMatrix3.b, c: oldMatrix3.c, d: oldMatrix3.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart3.viewPortHandler.refresh(newMatrix: currentMatrix3, chart: lineChart3, invalidate: true)
            
            let oldMatrix4 = lineChart4.viewPortHandler.touchMatrix
            let currentMatrix4 = CGAffineTransform(a: oldMatrix4.a, b: oldMatrix4.b, c: oldMatrix4.c, d: oldMatrix4.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart4.viewPortHandler.refresh(newMatrix: currentMatrix4, chart: lineChart4, invalidate: true)
            
            let oldMatrix5 = lineChart5.viewPortHandler.touchMatrix
            let currentMatrix5 = CGAffineTransform(a: oldMatrix5.a, b: oldMatrix5.b, c: oldMatrix5.c, d: oldMatrix5.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart5.viewPortHandler.refresh(newMatrix: currentMatrix5, chart: lineChart5, invalidate: true)
            
            let oldMatrix6 = lineChart6.viewPortHandler.touchMatrix
            let currentMatrix6 = CGAffineTransform(a: oldMatrix6.a, b: oldMatrix6.b, c: oldMatrix6.c, d: oldMatrix6.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart6.viewPortHandler.refresh(newMatrix: currentMatrix6, chart: lineChart6, invalidate: true)
            
            let oldMatrix7 = lineChart7.viewPortHandler.touchMatrix
            let currentMatrix7 = CGAffineTransform(a: oldMatrix7.a, b: oldMatrix7.b, c: oldMatrix7.c, d: oldMatrix7.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart7.viewPortHandler.refresh(newMatrix: currentMatrix7, chart: lineChart7, invalidate: true)
            
            let oldMatrix8 = lineChart8.viewPortHandler.touchMatrix
            let currentMatrix8 = CGAffineTransform(a: oldMatrix8.a, b: oldMatrix8.b, c: oldMatrix8.c, d: oldMatrix8.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart8.viewPortHandler.refresh(newMatrix: currentMatrix8, chart: lineChart8, invalidate: true)
            
            let oldMatrix9 = lineChart9.viewPortHandler.touchMatrix
            let currentMatrix9 = CGAffineTransform(a: oldMatrix9.a, b: oldMatrix9.b, c: oldMatrix9.c, d: oldMatrix9.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart9.viewPortHandler.refresh(newMatrix: currentMatrix9, chart: lineChart9, invalidate: true)
            
            let oldMatrix10 = lineChart10.viewPortHandler.touchMatrix
            let currentMatrix10 = CGAffineTransform(a: oldMatrix10.a, b: oldMatrix10.b, c: oldMatrix10.c, d: oldMatrix10.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart10.viewPortHandler.refresh(newMatrix: currentMatrix10, chart: lineChart10, invalidate: true)
            
            let oldMatrix11 = lineChart11.viewPortHandler.touchMatrix
            let currentMatrix11 = CGAffineTransform(a: oldMatrix11.a, b: oldMatrix11.b, c: oldMatrix11.c, d: oldMatrix11.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart11.viewPortHandler.refresh(newMatrix: currentMatrix11, chart: lineChart11, invalidate: true)
            
            let oldMatrix13 = lineChart13.viewPortHandler.touchMatrix
            let currentMatrix13 = CGAffineTransform(a: oldMatrix13.a, b: oldMatrix13.b, c: oldMatrix13.c, d: oldMatrix13.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart13.viewPortHandler.refresh(newMatrix: currentMatrix13, chart: lineChart13, invalidate: true)
            
            let oldMatrix14 = lineChart14.viewPortHandler.touchMatrix
            let currentMatrix14 = CGAffineTransform(a: oldMatrix14.a, b: oldMatrix14.b, c: oldMatrix14.c, d: oldMatrix14.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart14.viewPortHandler.refresh(newMatrix: currentMatrix14, chart: lineChart14, invalidate: true)
            
            let oldMatrix15 = lineChart15.viewPortHandler.touchMatrix
            let currentMatrix15 = CGAffineTransform(a: oldMatrix15.a, b: oldMatrix15.b, c: oldMatrix15.c, d: oldMatrix15.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart15.viewPortHandler.refresh(newMatrix: currentMatrix15, chart: lineChart15, invalidate: true)
            
            let oldMatrix16 = lineChart16.viewPortHandler.touchMatrix
            let currentMatrix16 = CGAffineTransform(a: oldMatrix16.a, b: oldMatrix16.b, c: oldMatrix16.c, d: oldMatrix16.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart16.viewPortHandler.refresh(newMatrix: currentMatrix16, chart: lineChart16, invalidate: true)
            
        } else if chartView == lineChart13 {
            let newMatrix = lineChart13.viewPortHandler.touchMatrix
            
            let oldMatrix1 = lineChart1.viewPortHandler.touchMatrix
            let currentMatrix1 = CGAffineTransform(a: oldMatrix1.a, b: oldMatrix1.b, c: oldMatrix1.c, d: oldMatrix1.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart1.viewPortHandler.refresh(newMatrix: currentMatrix1, chart: lineChart1, invalidate: true)
            
            let oldMatrix2 = lineChart2.viewPortHandler.touchMatrix
            let currentMatrix2 = CGAffineTransform(a: oldMatrix2.a, b: oldMatrix2.b, c: oldMatrix2.c, d: oldMatrix2.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart2.viewPortHandler.refresh(newMatrix: currentMatrix2, chart: lineChart2, invalidate: true)
            
            let oldMatrix3 = lineChart3.viewPortHandler.touchMatrix
            let currentMatrix3 = CGAffineTransform(a: oldMatrix3.a, b: oldMatrix3.b, c: oldMatrix3.c, d: oldMatrix3.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart3.viewPortHandler.refresh(newMatrix: currentMatrix3, chart: lineChart3, invalidate: true)
            
            let oldMatrix4 = lineChart4.viewPortHandler.touchMatrix
            let currentMatrix4 = CGAffineTransform(a: oldMatrix4.a, b: oldMatrix4.b, c: oldMatrix4.c, d: oldMatrix4.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart4.viewPortHandler.refresh(newMatrix: currentMatrix4, chart: lineChart4, invalidate: true)
            
            let oldMatrix5 = lineChart5.viewPortHandler.touchMatrix
            let currentMatrix5 = CGAffineTransform(a: oldMatrix5.a, b: oldMatrix5.b, c: oldMatrix5.c, d: oldMatrix5.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart5.viewPortHandler.refresh(newMatrix: currentMatrix5, chart: lineChart5, invalidate: true)
            
            let oldMatrix6 = lineChart6.viewPortHandler.touchMatrix
            let currentMatrix6 = CGAffineTransform(a: oldMatrix6.a, b: oldMatrix6.b, c: oldMatrix6.c, d: oldMatrix6.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart6.viewPortHandler.refresh(newMatrix: currentMatrix6, chart: lineChart6, invalidate: true)
            
            let oldMatrix7 = lineChart7.viewPortHandler.touchMatrix
            let currentMatrix7 = CGAffineTransform(a: oldMatrix7.a, b: oldMatrix7.b, c: oldMatrix7.c, d: oldMatrix7.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart7.viewPortHandler.refresh(newMatrix: currentMatrix7, chart: lineChart7, invalidate: true)
            
            let oldMatrix8 = lineChart8.viewPortHandler.touchMatrix
            let currentMatrix8 = CGAffineTransform(a: oldMatrix8.a, b: oldMatrix8.b, c: oldMatrix8.c, d: oldMatrix8.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart8.viewPortHandler.refresh(newMatrix: currentMatrix8, chart: lineChart8, invalidate: true)
            
            let oldMatrix9 = lineChart9.viewPortHandler.touchMatrix
            let currentMatrix9 = CGAffineTransform(a: oldMatrix9.a, b: oldMatrix9.b, c: oldMatrix9.c, d: oldMatrix9.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart9.viewPortHandler.refresh(newMatrix: currentMatrix9, chart: lineChart9, invalidate: true)
            
            let oldMatrix10 = lineChart10.viewPortHandler.touchMatrix
            let currentMatrix10 = CGAffineTransform(a: oldMatrix10.a, b: oldMatrix10.b, c: oldMatrix10.c, d: oldMatrix10.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart10.viewPortHandler.refresh(newMatrix: currentMatrix10, chart: lineChart10, invalidate: true)
            
            let oldMatrix11 = lineChart11.viewPortHandler.touchMatrix
            let currentMatrix11 = CGAffineTransform(a: oldMatrix11.a, b: oldMatrix11.b, c: oldMatrix11.c, d: oldMatrix11.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart11.viewPortHandler.refresh(newMatrix: currentMatrix11, chart: lineChart11, invalidate: true)
            
            let oldMatrix12 = lineChart12.viewPortHandler.touchMatrix
            let currentMatrix12 = CGAffineTransform(a: oldMatrix12.a, b: oldMatrix12.b, c: oldMatrix12.c, d: oldMatrix12.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart12.viewPortHandler.refresh(newMatrix: currentMatrix12, chart: lineChart12, invalidate: true)
            
            let oldMatrix14 = lineChart14.viewPortHandler.touchMatrix
            let currentMatrix14 = CGAffineTransform(a: oldMatrix14.a, b: oldMatrix14.b, c: oldMatrix14.c, d: oldMatrix14.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart14.viewPortHandler.refresh(newMatrix: currentMatrix14, chart: lineChart14, invalidate: true)
            
            let oldMatrix15 = lineChart15.viewPortHandler.touchMatrix
            let currentMatrix15 = CGAffineTransform(a: oldMatrix15.a, b: oldMatrix15.b, c: oldMatrix15.c, d: oldMatrix15.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart15.viewPortHandler.refresh(newMatrix: currentMatrix15, chart: lineChart15, invalidate: true)
            
            let oldMatrix16 = lineChart16.viewPortHandler.touchMatrix
            let currentMatrix16 = CGAffineTransform(a: oldMatrix16.a, b: oldMatrix16.b, c: oldMatrix16.c, d: oldMatrix16.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart16.viewPortHandler.refresh(newMatrix: currentMatrix16, chart: lineChart16, invalidate: true)
            
        } else if chartView == lineChart14 {
            let newMatrix = lineChart14.viewPortHandler.touchMatrix
            
            let oldMatrix1 = lineChart1.viewPortHandler.touchMatrix
            let currentMatrix1 = CGAffineTransform(a: oldMatrix1.a, b: oldMatrix1.b, c: oldMatrix1.c, d: oldMatrix1.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart1.viewPortHandler.refresh(newMatrix: currentMatrix1, chart: lineChart1, invalidate: true)
            
            let oldMatrix2 = lineChart2.viewPortHandler.touchMatrix
            let currentMatrix2 = CGAffineTransform(a: oldMatrix2.a, b: oldMatrix2.b, c: oldMatrix2.c, d: oldMatrix2.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart2.viewPortHandler.refresh(newMatrix: currentMatrix2, chart: lineChart2, invalidate: true)
            
            let oldMatrix3 = lineChart3.viewPortHandler.touchMatrix
            let currentMatrix3 = CGAffineTransform(a: oldMatrix3.a, b: oldMatrix3.b, c: oldMatrix3.c, d: oldMatrix3.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart3.viewPortHandler.refresh(newMatrix: currentMatrix3, chart: lineChart3, invalidate: true)
            
            let oldMatrix4 = lineChart4.viewPortHandler.touchMatrix
            let currentMatrix4 = CGAffineTransform(a: oldMatrix4.a, b: oldMatrix4.b, c: oldMatrix4.c, d: oldMatrix4.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart4.viewPortHandler.refresh(newMatrix: currentMatrix4, chart: lineChart4, invalidate: true)
            
            let oldMatrix5 = lineChart5.viewPortHandler.touchMatrix
            let currentMatrix5 = CGAffineTransform(a: oldMatrix5.a, b: oldMatrix5.b, c: oldMatrix5.c, d: oldMatrix5.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart5.viewPortHandler.refresh(newMatrix: currentMatrix5, chart: lineChart5, invalidate: true)
            
            let oldMatrix6 = lineChart6.viewPortHandler.touchMatrix
            let currentMatrix6 = CGAffineTransform(a: oldMatrix6.a, b: oldMatrix6.b, c: oldMatrix6.c, d: oldMatrix6.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart6.viewPortHandler.refresh(newMatrix: currentMatrix6, chart: lineChart6, invalidate: true)
            
            let oldMatrix7 = lineChart7.viewPortHandler.touchMatrix
            let currentMatrix7 = CGAffineTransform(a: oldMatrix7.a, b: oldMatrix7.b, c: oldMatrix7.c, d: oldMatrix7.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart7.viewPortHandler.refresh(newMatrix: currentMatrix7, chart: lineChart7, invalidate: true)
            
            let oldMatrix8 = lineChart8.viewPortHandler.touchMatrix
            let currentMatrix8 = CGAffineTransform(a: oldMatrix8.a, b: oldMatrix8.b, c: oldMatrix8.c, d: oldMatrix8.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart8.viewPortHandler.refresh(newMatrix: currentMatrix8, chart: lineChart8, invalidate: true)
            
            let oldMatrix9 = lineChart9.viewPortHandler.touchMatrix
            let currentMatrix9 = CGAffineTransform(a: oldMatrix9.a, b: oldMatrix9.b, c: oldMatrix9.c, d: oldMatrix9.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart9.viewPortHandler.refresh(newMatrix: currentMatrix9, chart: lineChart9, invalidate: true)
            
            let oldMatrix10 = lineChart10.viewPortHandler.touchMatrix
            let currentMatrix10 = CGAffineTransform(a: oldMatrix10.a, b: oldMatrix10.b, c: oldMatrix10.c, d: oldMatrix10.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart10.viewPortHandler.refresh(newMatrix: currentMatrix10, chart: lineChart10, invalidate: true)
            
            let oldMatrix11 = lineChart11.viewPortHandler.touchMatrix
            let currentMatrix11 = CGAffineTransform(a: oldMatrix11.a, b: oldMatrix11.b, c: oldMatrix11.c, d: oldMatrix11.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart11.viewPortHandler.refresh(newMatrix: currentMatrix11, chart: lineChart11, invalidate: true)
            
            let oldMatrix12 = lineChart12.viewPortHandler.touchMatrix
            let currentMatrix12 = CGAffineTransform(a: oldMatrix12.a, b: oldMatrix12.b, c: oldMatrix12.c, d: oldMatrix12.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart12.viewPortHandler.refresh(newMatrix: currentMatrix12, chart: lineChart12, invalidate: true)
            
            let oldMatrix13 = lineChart13.viewPortHandler.touchMatrix
            let currentMatrix13 = CGAffineTransform(a: oldMatrix13.a, b: oldMatrix13.b, c: oldMatrix13.c, d: oldMatrix13.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart13.viewPortHandler.refresh(newMatrix: currentMatrix13, chart: lineChart13, invalidate: true)
            
            let oldMatrix15 = lineChart15.viewPortHandler.touchMatrix
            let currentMatrix15 = CGAffineTransform(a: oldMatrix15.a, b: oldMatrix15.b, c: oldMatrix15.c, d: oldMatrix15.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart15.viewPortHandler.refresh(newMatrix: currentMatrix15, chart: lineChart15, invalidate: true)
            
            let oldMatrix16 = lineChart16.viewPortHandler.touchMatrix
            let currentMatrix16 = CGAffineTransform(a: oldMatrix16.a, b: oldMatrix16.b, c: oldMatrix16.c, d: oldMatrix16.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart16.viewPortHandler.refresh(newMatrix: currentMatrix16, chart: lineChart16, invalidate: true)
            
        } else if chartView == lineChart15 {
            let newMatrix = lineChart15.viewPortHandler.touchMatrix
            
            let oldMatrix1 = lineChart1.viewPortHandler.touchMatrix
            let currentMatrix1 = CGAffineTransform(a: oldMatrix1.a, b: oldMatrix1.b, c: oldMatrix1.c, d: oldMatrix1.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart1.viewPortHandler.refresh(newMatrix: currentMatrix1, chart: lineChart1, invalidate: true)
            
            let oldMatrix2 = lineChart2.viewPortHandler.touchMatrix
            let currentMatrix2 = CGAffineTransform(a: oldMatrix2.a, b: oldMatrix2.b, c: oldMatrix2.c, d: oldMatrix2.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart2.viewPortHandler.refresh(newMatrix: currentMatrix2, chart: lineChart2, invalidate: true)
            
            let oldMatrix3 = lineChart3.viewPortHandler.touchMatrix
            let currentMatrix3 = CGAffineTransform(a: oldMatrix3.a, b: oldMatrix3.b, c: oldMatrix3.c, d: oldMatrix3.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart3.viewPortHandler.refresh(newMatrix: currentMatrix3, chart: lineChart3, invalidate: true)
            
            let oldMatrix4 = lineChart4.viewPortHandler.touchMatrix
            let currentMatrix4 = CGAffineTransform(a: oldMatrix4.a, b: oldMatrix4.b, c: oldMatrix4.c, d: oldMatrix4.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart4.viewPortHandler.refresh(newMatrix: currentMatrix4, chart: lineChart4, invalidate: true)
            
            let oldMatrix5 = lineChart5.viewPortHandler.touchMatrix
            let currentMatrix5 = CGAffineTransform(a: oldMatrix5.a, b: oldMatrix5.b, c: oldMatrix5.c, d: oldMatrix5.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart5.viewPortHandler.refresh(newMatrix: currentMatrix5, chart: lineChart5, invalidate: true)
            
            let oldMatrix6 = lineChart6.viewPortHandler.touchMatrix
            let currentMatrix6 = CGAffineTransform(a: oldMatrix6.a, b: oldMatrix6.b, c: oldMatrix6.c, d: oldMatrix6.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart6.viewPortHandler.refresh(newMatrix: currentMatrix6, chart: lineChart6, invalidate: true)
            
            let oldMatrix7 = lineChart7.viewPortHandler.touchMatrix
            let currentMatrix7 = CGAffineTransform(a: oldMatrix7.a, b: oldMatrix7.b, c: oldMatrix7.c, d: oldMatrix7.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart7.viewPortHandler.refresh(newMatrix: currentMatrix7, chart: lineChart7, invalidate: true)
            
            let oldMatrix8 = lineChart8.viewPortHandler.touchMatrix
            let currentMatrix8 = CGAffineTransform(a: oldMatrix8.a, b: oldMatrix8.b, c: oldMatrix8.c, d: oldMatrix8.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart8.viewPortHandler.refresh(newMatrix: currentMatrix8, chart: lineChart8, invalidate: true)
            
            let oldMatrix9 = lineChart9.viewPortHandler.touchMatrix
            let currentMatrix9 = CGAffineTransform(a: oldMatrix9.a, b: oldMatrix9.b, c: oldMatrix9.c, d: oldMatrix9.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart9.viewPortHandler.refresh(newMatrix: currentMatrix9, chart: lineChart9, invalidate: true)
            
            let oldMatrix10 = lineChart10.viewPortHandler.touchMatrix
            let currentMatrix10 = CGAffineTransform(a: oldMatrix10.a, b: oldMatrix10.b, c: oldMatrix10.c, d: oldMatrix10.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart10.viewPortHandler.refresh(newMatrix: currentMatrix10, chart: lineChart10, invalidate: true)
            
            let oldMatrix11 = lineChart11.viewPortHandler.touchMatrix
            let currentMatrix11 = CGAffineTransform(a: oldMatrix11.a, b: oldMatrix11.b, c: oldMatrix11.c, d: oldMatrix11.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart11.viewPortHandler.refresh(newMatrix: currentMatrix11, chart: lineChart11, invalidate: true)
            
            let oldMatrix12 = lineChart12.viewPortHandler.touchMatrix
            let currentMatrix12 = CGAffineTransform(a: oldMatrix12.a, b: oldMatrix12.b, c: oldMatrix12.c, d: oldMatrix12.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart12.viewPortHandler.refresh(newMatrix: currentMatrix12, chart: lineChart12, invalidate: true)
            
            let oldMatrix13 = lineChart13.viewPortHandler.touchMatrix
            let currentMatrix13 = CGAffineTransform(a: oldMatrix13.a, b: oldMatrix13.b, c: oldMatrix13.c, d: oldMatrix13.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart13.viewPortHandler.refresh(newMatrix: currentMatrix13, chart: lineChart13, invalidate: true)
            
            let oldMatrix14 = lineChart14.viewPortHandler.touchMatrix
            let currentMatrix14 = CGAffineTransform(a: oldMatrix14.a, b: oldMatrix14.b, c: oldMatrix14.c, d: oldMatrix14.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart14.viewPortHandler.refresh(newMatrix: currentMatrix14, chart: lineChart14, invalidate: true)
            
            let oldMatrix16 = lineChart16.viewPortHandler.touchMatrix
            let currentMatrix16 = CGAffineTransform(a: oldMatrix16.a, b: oldMatrix16.b, c: oldMatrix16.c, d: oldMatrix16.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart16.viewPortHandler.refresh(newMatrix: currentMatrix16, chart: lineChart16, invalidate: true)
            
        } else if chartView == lineChart16 {
            let newMatrix = lineChart16.viewPortHandler.touchMatrix
            
            let oldMatrix1 = lineChart1.viewPortHandler.touchMatrix
            let currentMatrix1 = CGAffineTransform(a: oldMatrix1.a, b: oldMatrix1.b, c: oldMatrix1.c, d: oldMatrix1.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart1.viewPortHandler.refresh(newMatrix: currentMatrix1, chart: lineChart1, invalidate: true)
            
            let oldMatrix2 = lineChart2.viewPortHandler.touchMatrix
            let currentMatrix2 = CGAffineTransform(a: oldMatrix2.a, b: oldMatrix2.b, c: oldMatrix2.c, d: oldMatrix2.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart2.viewPortHandler.refresh(newMatrix: currentMatrix2, chart: lineChart2, invalidate: true)
            
            let oldMatrix3 = lineChart3.viewPortHandler.touchMatrix
            let currentMatrix3 = CGAffineTransform(a: oldMatrix3.a, b: oldMatrix3.b, c: oldMatrix3.c, d: oldMatrix3.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart3.viewPortHandler.refresh(newMatrix: currentMatrix3, chart: lineChart3, invalidate: true)
            
            let oldMatrix4 = lineChart4.viewPortHandler.touchMatrix
            let currentMatrix4 = CGAffineTransform(a: oldMatrix4.a, b: oldMatrix4.b, c: oldMatrix4.c, d: oldMatrix4.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart4.viewPortHandler.refresh(newMatrix: currentMatrix4, chart: lineChart4, invalidate: true)
            
            let oldMatrix5 = lineChart5.viewPortHandler.touchMatrix
            let currentMatrix5 = CGAffineTransform(a: oldMatrix5.a, b: oldMatrix5.b, c: oldMatrix5.c, d: oldMatrix5.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart5.viewPortHandler.refresh(newMatrix: currentMatrix5, chart: lineChart5, invalidate: true)
            
            let oldMatrix6 = lineChart6.viewPortHandler.touchMatrix
            let currentMatrix6 = CGAffineTransform(a: oldMatrix6.a, b: oldMatrix6.b, c: oldMatrix6.c, d: oldMatrix6.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart6.viewPortHandler.refresh(newMatrix: currentMatrix6, chart: lineChart6, invalidate: true)
            
            let oldMatrix7 = lineChart7.viewPortHandler.touchMatrix
            let currentMatrix7 = CGAffineTransform(a: oldMatrix7.a, b: oldMatrix7.b, c: oldMatrix7.c, d: oldMatrix7.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart7.viewPortHandler.refresh(newMatrix: currentMatrix7, chart: lineChart7, invalidate: true)
            
            let oldMatrix8 = lineChart8.viewPortHandler.touchMatrix
            let currentMatrix8 = CGAffineTransform(a: oldMatrix8.a, b: oldMatrix8.b, c: oldMatrix8.c, d: oldMatrix8.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart8.viewPortHandler.refresh(newMatrix: currentMatrix8, chart: lineChart8, invalidate: true)
            
            let oldMatrix9 = lineChart9.viewPortHandler.touchMatrix
            let currentMatrix9 = CGAffineTransform(a: oldMatrix9.a, b: oldMatrix9.b, c: oldMatrix9.c, d: oldMatrix9.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart9.viewPortHandler.refresh(newMatrix: currentMatrix9, chart: lineChart9, invalidate: true)
            
            let oldMatrix10 = lineChart10.viewPortHandler.touchMatrix
            let currentMatrix10 = CGAffineTransform(a: oldMatrix10.a, b: oldMatrix10.b, c: oldMatrix10.c, d: oldMatrix10.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart10.viewPortHandler.refresh(newMatrix: currentMatrix10, chart: lineChart10, invalidate: true)
            
            let oldMatrix11 = lineChart11.viewPortHandler.touchMatrix
            let currentMatrix11 = CGAffineTransform(a: oldMatrix11.a, b: oldMatrix11.b, c: oldMatrix11.c, d: oldMatrix11.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart11.viewPortHandler.refresh(newMatrix: currentMatrix11, chart: lineChart11, invalidate: true)
            
            let oldMatrix12 = lineChart12.viewPortHandler.touchMatrix
            let currentMatrix12 = CGAffineTransform(a: oldMatrix12.a, b: oldMatrix12.b, c: oldMatrix12.c, d: oldMatrix12.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart12.viewPortHandler.refresh(newMatrix: currentMatrix12, chart: lineChart12, invalidate: true)
            
            let oldMatrix13 = lineChart13.viewPortHandler.touchMatrix
            let currentMatrix13 = CGAffineTransform(a: oldMatrix13.a, b: oldMatrix13.b, c: oldMatrix13.c, d: oldMatrix13.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart13.viewPortHandler.refresh(newMatrix: currentMatrix13, chart: lineChart13, invalidate: true)
            
            let oldMatrix14 = lineChart14.viewPortHandler.touchMatrix
            let currentMatrix14 = CGAffineTransform(a: oldMatrix14.a, b: oldMatrix14.b, c: oldMatrix14.c, d: oldMatrix14.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart14.viewPortHandler.refresh(newMatrix: currentMatrix14, chart: lineChart14, invalidate: true)
            
            let oldMatrix15 = lineChart15.viewPortHandler.touchMatrix
            let currentMatrix15 = CGAffineTransform(a: oldMatrix15.a, b: oldMatrix15.b, c: oldMatrix15.c, d: oldMatrix15.d, tx: newMatrix.tx, ty: newMatrix.ty)
            lineChart15.viewPortHandler.refresh(newMatrix: currentMatrix15, chart: lineChart15, invalidate: true)
            
        }
        
    }
    
    */
    
    
    /*
    func translateCharts (chartView: CombinedChartView) {
        let currentMatrix = chartView.viewPortHandler.touchMatrix
        lineChart1.viewPortHandler.refresh(newMatrix: __CGAffineTransformMake(lineChart1.viewPortHandler.touchMatrix.a
            , lineChart1.viewPortHandler.touchMatrix.b, lineChart1.viewPortHandler.touchMatrix.c, lineChart1.viewPortHandler.touchMatrix.d, currentMatrix.tx, lineChart1.viewPortHandler.touchMatrix.ty), chart: lineChart1, invalidate: true)
        
        lineChart2.viewPortHandler.refresh(newMatrix: __CGAffineTransformMake(lineChart2.viewPortHandler.touchMatrix.a
            , lineChart2.viewPortHandler.touchMatrix.b, lineChart2.viewPortHandler.touchMatrix.c, lineChart2.viewPortHandler.touchMatrix.d, currentMatrix.tx, lineChart2.viewPortHandler.touchMatrix.ty), chart: lineChart2, invalidate: true)
        
        lineChart3.viewPortHandler.refresh(newMatrix: __CGAffineTransformMake(lineChart3.viewPortHandler.touchMatrix.a
            , lineChart3.viewPortHandler.touchMatrix.b, lineChart3.viewPortHandler.touchMatrix.c, lineChart3.viewPortHandler.touchMatrix.d, currentMatrix.tx, lineChart3.viewPortHandler.touchMatrix.ty), chart: lineChart3, invalidate: true)
        
        lineChart4.viewPortHandler.refresh(newMatrix: __CGAffineTransformMake(lineChart4.viewPortHandler.touchMatrix.a
            , lineChart4.viewPortHandler.touchMatrix.b, lineChart4.viewPortHandler.touchMatrix.c, lineChart4.viewPortHandler.touchMatrix.d, currentMatrix.tx, lineChart4.viewPortHandler.touchMatrix.ty), chart: lineChart4, invalidate: true)
        
        lineChart5.viewPortHandler.refresh(newMatrix: __CGAffineTransformMake(lineChart5.viewPortHandler.touchMatrix.a
            , lineChart5.viewPortHandler.touchMatrix.b, lineChart5.viewPortHandler.touchMatrix.c, lineChart5.viewPortHandler.touchMatrix.d, currentMatrix.tx, lineChart5.viewPortHandler.touchMatrix.ty), chart: lineChart5, invalidate: true)
        
        lineChart6.viewPortHandler.refresh(newMatrix: __CGAffineTransformMake(lineChart6.viewPortHandler.touchMatrix.a
            , lineChart6.viewPortHandler.touchMatrix.b, lineChart6.viewPortHandler.touchMatrix.c, lineChart6.viewPortHandler.touchMatrix.d, currentMatrix.tx, lineChart6.viewPortHandler.touchMatrix.ty), chart: lineChart6, invalidate: true)
        
        lineChart7.viewPortHandler.refresh(newMatrix: __CGAffineTransformMake(lineChart7.viewPortHandler.touchMatrix.a
            , lineChart7.viewPortHandler.touchMatrix.b, lineChart7.viewPortHandler.touchMatrix.c, lineChart7.viewPortHandler.touchMatrix.d, currentMatrix.tx, lineChart7.viewPortHandler.touchMatrix.ty), chart: lineChart7, invalidate: true)
        
        lineChart8.viewPortHandler.refresh(newMatrix: __CGAffineTransformMake(lineChart8.viewPortHandler.touchMatrix.a
            , lineChart8.viewPortHandler.touchMatrix.b, lineChart8.viewPortHandler.touchMatrix.c, lineChart8.viewPortHandler.touchMatrix.d, currentMatrix.tx, lineChart8.viewPortHandler.touchMatrix.ty), chart: lineChart8, invalidate: true)
        
        lineChart9.viewPortHandler.refresh(newMatrix: __CGAffineTransformMake(lineChart9.viewPortHandler.touchMatrix.a
            , lineChart9.viewPortHandler.touchMatrix.b, lineChart9.viewPortHandler.touchMatrix.c, lineChart9.viewPortHandler.touchMatrix.d, currentMatrix.tx, lineChart9.viewPortHandler.touchMatrix.ty), chart: lineChart9, invalidate: true)
        
        lineChart10.viewPortHandler.refresh(newMatrix: __CGAffineTransformMake(lineChart10.viewPortHandler.touchMatrix.a
            , lineChart10.viewPortHandler.touchMatrix.b, lineChart10.viewPortHandler.touchMatrix.c, lineChart10.viewPortHandler.touchMatrix.d, currentMatrix.tx, lineChart10.viewPortHandler.touchMatrix.ty), chart: lineChart10, invalidate: true)
        
        lineChart11.viewPortHandler.refresh(newMatrix: __CGAffineTransformMake(lineChart11.viewPortHandler.touchMatrix.a
            , lineChart11.viewPortHandler.touchMatrix.b, lineChart11.viewPortHandler.touchMatrix.c, lineChart11.viewPortHandler.touchMatrix.d, currentMatrix.tx, lineChart11.viewPortHandler.touchMatrix.ty), chart: lineChart11, invalidate: true)
        
        lineChart12.viewPortHandler.refresh(newMatrix: __CGAffineTransformMake(lineChart12.viewPortHandler.touchMatrix.a
            , lineChart12.viewPortHandler.touchMatrix.b, lineChart12.viewPortHandler.touchMatrix.c, lineChart12.viewPortHandler.touchMatrix.d, currentMatrix.tx, lineChart12.viewPortHandler.touchMatrix.ty), chart: lineChart12, invalidate: true)
        
        lineChart13.viewPortHandler.refresh(newMatrix: __CGAffineTransformMake(lineChart13.viewPortHandler.touchMatrix.a
            , lineChart13.viewPortHandler.touchMatrix.b, lineChart13.viewPortHandler.touchMatrix.c, lineChart13.viewPortHandler.touchMatrix.d, currentMatrix.tx, lineChart13.viewPortHandler.touchMatrix.ty), chart: lineChart13, invalidate: true)
        
        lineChart14.viewPortHandler.refresh(newMatrix: __CGAffineTransformMake(lineChart14.viewPortHandler.touchMatrix.a
            , lineChart14.viewPortHandler.touchMatrix.b, lineChart14.viewPortHandler.touchMatrix.c, lineChart14.viewPortHandler.touchMatrix.d, currentMatrix.tx, lineChart14.viewPortHandler.touchMatrix.ty), chart: lineChart14, invalidate: true)
        
        lineChart15.viewPortHandler.refresh(newMatrix: __CGAffineTransformMake(lineChart15.viewPortHandler.touchMatrix.a
            , lineChart15.viewPortHandler.touchMatrix.b, lineChart15.viewPortHandler.touchMatrix.c, lineChart15.viewPortHandler.touchMatrix.d, currentMatrix.tx, lineChart15.viewPortHandler.touchMatrix.ty), chart: lineChart15, invalidate: true)
        
        lineChart16.viewPortHandler.refresh(newMatrix: __CGAffineTransformMake(lineChart16.viewPortHandler.touchMatrix.a
            , lineChart16.viewPortHandler.touchMatrix.b, lineChart16.viewPortHandler.touchMatrix.c,  lineChart16.viewPortHandler.touchMatrix.d, currentMatrix.tx, lineChart16.viewPortHandler.touchMatrix.ty), chart: lineChart16, invalidate: true)
        
    }
    */
    
    

}
