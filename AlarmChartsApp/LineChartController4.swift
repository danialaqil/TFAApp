//
//  LineChartController4.swift
//  AlarmChartsApp
//
//  Created by Danial Aqil on 8/7/19.
//  Copyright © 2019 imdadsl. All rights reserved.
//

import UIKit
import Charts

class LineChartController4: UIViewController {
    
    let numberOfSparksGraph1: [Double] = []
    let numberOfSparksGraph2: [Double] = []
    let numberOfSparksGraph3: [Double] = []
    let numberOfSparksGraph4: [Double] = []
    let numberOfSparksGraph5: [Double] = []
    let numberOfSparksGraph6: [Double] = []
    let numberOfSparksGraph7: [Double] = []
    let numberOfSparksGraph8: [Double] = []
    let numberOfSparksGraph9: [Double] = []
    let numberOfSparksGraph10: [Double] = []
    let numberOfSparksGraph11: [Double] = []
    let numberOfSparksGraph12: [Double] = []
    let numberOfSparksGraph13: [Double] = []
    let numberOfSparksGraph14: [Double] = []
    let numberOfSparksGraph15: [Double] = []
    let numberOfSparksGraph16: [Double] = []
    
    let daysNumbered: [Double] = []
    
    let xScatter1: [Double] = []
    let yScatter1: [Double] = []
    let xScatter2: [Double] = []
    let yScatter2: [Double] = []
    let xScatter3: [Double] = []
    let yScatter3: [Double] = []
    let xScatter4: [Double] = []
    let yScatter4: [Double] = []
    let xScatter5: [Double] = []
    let yScatter5: [Double] = []
    let xScatter6: [Double] = []
    let yScatter6: [Double] = []
    let xScatter7: [Double] = []
    let yScatter7: [Double] = []
    let xScatter8: [Double] = []
    let yScatter8: [Double] = []
    let xScatter9: [Double] = []
    let yScatter9: [Double] = []
    let xScatter10: [Double] = []
    let yScatter10: [Double] = []
    let xScatter11: [Double] = []
    let yScatter11: [Double] = []
    let xScatter12: [Double] = []
    let yScatter12: [Double] = []
    let xScatter13: [Double] = []
    let yScatter13: [Double] = []
    let xScatter14: [Double] = []
    let yScatter14: [Double] = []
    let xScatter15: [Double] = []
    let yScatter15: [Double] = []
    let xScatter16: [Double] = []
    let yScatter16: [Double] = []
    
    
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
        addBackButton()
        navigationController?.navigationBar.topItem?.title = "Chiller 4"
        
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
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
    
    //programitacally creating a back button
    func addBackButton() {
        let backButton = UIButton(type: .custom)
        backButton.setTitle("Back", for: .normal)
        
        backButton.addTarget(self, action: #selector(self.backAction(_:)), for: .touchUpInside)
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: backButton)
    }
    //action for the back button
    @IBAction func backAction(_ sender: UIButton) {
        let _ = self.dismiss(animated: true, completion: nil)
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
    
    
    
    
    


}
