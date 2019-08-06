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
    
    //    https://api.coindesk.com/v1/bpi/currentprice.json

    
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
        
        customiseChart(datapoints: numberOfSparksGraph1, values: daysNumbered, lineChartView: lineChart1, label: "Graph 1")
        customiseChart(datapoints: numberOfSparksGraph2, values: daysNumbered, lineChartView: lineChart2, label: "Graph 2")
        customiseChart(datapoints: numberOfSparksGraph3, values: daysNumbered, lineChartView: lineChart3, label: "Graph 3")
        customiseChart(datapoints: numberOfSparksGraph4, values: daysNumbered, lineChartView: lineChart4, label: "Graph 4")
        customiseChart(datapoints: numberOfSparksGraph5, values: daysNumbered, lineChartView: lineChart5, label: "Graph 5")
        customiseChart(datapoints: numberOfSparksGraph6, values: daysNumbered, lineChartView: lineChart6, label: "Graph 6")
        customiseChart(datapoints: numberOfSparksGraph7, values: daysNumbered, lineChartView: lineChart7, label: "Graph 7")
        customiseChart(datapoints: numberOfSparksGraph8, values: daysNumbered, lineChartView: lineChart8, label: "Graph 8")
        customiseChart(datapoints: numberOfSparksGraph9, values: daysNumbered, lineChartView: lineChart9, label: "Graph 9")
        customiseChart(datapoints: numberOfSparksGraph10, values: daysNumbered, lineChartView: lineChart10, label: "Graph 10")
        customiseChart(datapoints: numberOfSparksGraph11, values: daysNumbered, lineChartView: lineChart11, label: "Graph 11")
        customiseChart(datapoints: numberOfSparksGraph12, values: daysNumbered, lineChartView: lineChart12, label: "Graph 12")
        customiseChart(datapoints: numberOfSparksGraph13, values: daysNumbered, lineChartView: lineChart13, label: "Graph 13")
        customiseChart(datapoints: numberOfSparksGraph14, values: daysNumbered, lineChartView: lineChart14, label: "Graph 14")
        customiseChart(datapoints: numberOfSparksGraph15, values: daysNumbered, lineChartView: lineChart15, label: "Graph 15")
        customiseChart(datapoints: numberOfSparksGraph16, values: daysNumbered, lineChartView: lineChart16, label: "Graph 16")
    
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
    
    func customiseChart (datapoints: [Double], values: [Double], lineChartView: LineChartView, label: String) {
        
        //1) set ChartDataEntry
        
        var dataEntries: [ChartDataEntry] = []
        for i in 0..<datapoints.count {
            let entries = ChartDataEntry(x: values[i], y: datapoints[i])
            dataEntries.append(entries)
        }
        
        //2) set ChartDatSet
        let chartDataSet = LineChartDataSet(entries: dataEntries, label: label)
        
        //3) set ChartData
        let lineChartData = LineChartData(dataSet: chartDataSet)
        
        //4) assign it to chart's data
        lineChartView.data = lineChartData
    }
    
    
    

}
