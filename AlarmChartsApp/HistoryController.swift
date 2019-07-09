//
//  HistoryController.swift
//  AlarmChartsApp
//
//  Created by Danial Aqil on 8/7/19.
//  Copyright © 2019 imdadsl. All rights reserved.
//

import UIKit
import CoreData
import MessageUI

class HistoryController: UITableViewController, NSFetchedResultsControllerDelegate {
    
    let cellId = "cellId"
    var fetchedStatsArray: [NSManagedObject] = []
    
    fileprivate lazy var fetchedResultsController: NSFetchedResultsController<AlarmItem> = {
        //create fetch request
        let fetchRequest: NSFetchRequest<AlarmItem> = AlarmItem.fetchRequest()
        
        //configure fetch request
        fetchRequest.sortDescriptors = [NSSortDescriptor(key: "alarmAttributes", ascending: true)]
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let fetchedResultsController = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: context, sectionNameKeyPath: nil, cacheName: nil)
        
        let managedObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        fetchedResultsController.delegate = self
        
        return fetchedResultsController
    }()
    
    func controllerWillChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        tableView.beginUpdates()
    }
    
    func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        tableView.endUpdates()
    }
    
    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange anObject: Any, at indexPath: IndexPath?, for type: NSFetchedResultsChangeType, newIndexPath: IndexPath?) {
        
        switch(type) {
        case .insert:
            if let indexPath = newIndexPath {
                tableView.insertRows(at: [indexPath], with: .fade)
            }
            break;
        case .delete:
            if let indexPath = indexPath {
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
            break;
        case .update:
            //this is mostlikely where the problem lies
            //self.tableView.reloadData()
            if let indexPath = indexPath, let cell = tableView.cellForRow(at: indexPath) {
                configureCell(cell, at: indexPath)
            }
            break;
        case .move:
            if let indexPath = indexPath {
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
            if let newIndexPath = newIndexPath {
                tableView.insertRows(at: [newIndexPath], with: .fade)
            }
            break;
        @unknown default:
            print("Something odd is happening")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //theming
        view.backgroundColor = .white
        navigationController?.navigationBar.topItem?.title = "History"
        navigationController?.navigationBar.barTintColor = UIColor(red: 21/255, green: 101/255, blue: 192/255, alpha: 1)
        navigationController?.navigationBar.tintColor = .white
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add Alarm", style: .plain, target: self, action: #selector(addAlarmItem))
        navigationController?.navigationBar.topItem?.title = "History"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Export CSV", style: .plain, target: self, action: #selector(exportCSV))
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        do {
            try fetchedResultsController.performFetch()
        } catch let err as NSError {
            print("Failed to fetch items", err)
        }
    }
    
    @objc func addAlarmItem(_ sender: AnyObject) {
        //print("this works")
        let alertController = UIAlertController(title: "Add New Item", message: "Please fill in the blanks", preferredStyle: .alert)
        let saveAction = UIAlertAction(title: "Save", style: .default) { [unowned self] action in
            
            //combined string of attributes
            let myStrings: [String] = alertController.textFields!.compactMap { $0.text }
            let myText = myStrings.joined(separator: ",")
            
            self.save(myText)
            self.tableView.reloadData()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
        
        alertController.addTextField { (textField) in
            textField.placeholder = "Enter Name of Engineer"
        }
        alertController.addTextField { (textField) in
            textField.placeholder = "Enter Date of Alarm in DD/MM/YYYY"
        }
        alertController.addTextField { (textField) in
            textField.placeholder = "Enter Time of Alarm in 24h (eg: 2300)"
        }
        alertController.addTextField { (textField) in
            textField.placeholder = "Please indicate True/False (type True or False)"
        }
        alertController.addTextField { (textField) in
            textField.placeholder = "Insert comments (if any), or NIL"
        }
        
        //work on fullscreen display
        //alertController.modalPresentationStyle = UIModalPresentationStyle.overFullScreen
        alertController.addAction(saveAction)
        alertController.addAction(cancelAction)
        let height:NSLayoutConstraint = NSLayoutConstraint(item: alertController.view!, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: self.view.frame.height * 0.80)
        let width:NSLayoutConstraint = NSLayoutConstraint(item: alertController.view!, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 2, constant: self.view.frame.width * 0.80)
        
        //width doesnt work
        alertController.view.addConstraint(height)
        alertController.view.addConstraint(width)
        
        if let popoverController = alertController.popoverPresentationController {
            popoverController.sourceView = self.view;
            popoverController.sourceRect = CGRect(x: self.view.bounds.midX, y: self.view.bounds.midY, width: 0.0, height: 0.0)
            popoverController.permittedArrowDirections = []
            popoverController.barButtonItem = self.navigationItem.leftBarButtonItem
        }
        self.present(alertController, animated: true, completion: nil)
    }
    
    func save(_ itemName: String) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        let managedContext = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "AlarmItem", in: managedContext)!
        let item = NSManagedObject(entity: entity, insertInto: managedContext)
        item.setValue(itemName, forKey: "alarmAttributes")
        
        do {
            try managedContext.save()
            tableView.reloadData()
            
        } catch let err as NSError {
            print("Failed to save an item", err)
        }
    }
    
    @objc func exportCSV(_ sender: AnyObject) {
        exportDatabase()
    }
    
    func exportDatabase() {
        let exportString = createExportString()
        saveAndExport(exportString: exportString)
    }
    
    func saveAndExport(exportString: String) {
        let exportFilePath = NSTemporaryDirectory() + "itemlist.csv"
        let exportFileUrl = NSURL(fileURLWithPath: exportFilePath)
        FileManager.default.createFile(atPath: exportFilePath, contents: NSData() as Data, attributes: nil)
        var fileHandle: FileHandle? = nil
        
        do {
            fileHandle = try FileHandle(forUpdating: exportFileUrl as URL)
        } catch {
            print("filehandle has error")
        }
        
        if fileHandle != nil {
            fileHandle!.seekToEndOfFile()
            let csvData = exportString.data(using: String.Encoding.utf8, allowLossyConversion: false)
            fileHandle!.write(csvData!)
            fileHandle!.closeFile()
            
            let firstActivityItem = NSURL(fileURLWithPath: exportFilePath)
            let activityViewController : UIActivityViewController = UIActivityViewController(activityItems: [firstActivityItem], applicationActivities: nil)
            
            activityViewController.excludedActivityTypes = [
                UIActivity.ActivityType.assignToContact,
                UIActivity.ActivityType.saveToCameraRoll,
                UIActivity.ActivityType.postToFlickr,
                UIActivity.ActivityType.postToVimeo,
                UIActivity.ActivityType.postToTencentWeibo
            ]
            activityViewController.popoverPresentationController?.sourceView = self.view
            activityViewController.popoverPresentationController?.permittedArrowDirections = UIPopoverArrowDirection()
            activityViewController.popoverPresentationController?.sourceRect = CGRect(x: self.view.bounds.midX, y: self.view.bounds.midY, width: 0, height: 0)
            self.present(activityViewController, animated: true, completion: nil)
        }
    }
    
    func createExportString() -> String {
        var alarmAttributes: String?
        var export: String = NSLocalizedString("Engineer Name,Date of Alarm,Time of Alarm,True or False,Engineer Comments \n", comment: "")
        
        for (index, AlarmItem) in fetchedStatsArray.enumerated() {
            if index <= fetchedStatsArray.count - 1 {
                alarmAttributes = AlarmItem.value(forKey: "alarmAttributes") as! String?
                let alarmAttributeStrings = alarmAttributes
                export += "\(alarmAttributeStrings ?? "0") \n"
            }
        }
        print("the app will now print: \(export) ")
        return export
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        let sectionInfo = fetchedResultsController.sections![section]
        return sectionInfo.numberOfObjects
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        let alarmItem = fetchedResultsController.object(at: indexPath) as NSManagedObject
        cell.textLabel?.text = alarmItem.value(forKeyPath: "alarmAttributes") as? String
        return cell
    }
    
    func tableView(_ tableView: UITableView!, canEditRowAtIndexPath indexPath: NSIndexPath!) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        guard editingStyle == .delete else { return }
        
        //fetch
        let toBeDeleted = fetchedResultsController.object(at: indexPath)
        
        //delete
        fetchedResultsController.managedObjectContext.delete(toBeDeleted)
        
        do {
            try fetchedResultsController.managedObjectContext.save()
        } catch let err as NSError {
            print("failed to save item", err)
        }
        
    }
    
    func tableView(_tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AlarmItem", for: indexPath)
        configureCell(cell, at: indexPath)
        
        return cell
    }
    
    func configureCell(_ cell: UITableViewCell, at indexPath: IndexPath) {
        let alarmItem = fetchedResultsController.object(at: indexPath)
        
        //configure cell
        cell.textLabel?.text = alarmItem.value(forKeyPath: "alarmAttributes") as? String
    }
}

