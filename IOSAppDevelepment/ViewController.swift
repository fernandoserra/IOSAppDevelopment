//
//  ViewController.swift
//  IOSAppDevelepment
//
//  Created by Fernando Serra on 17-03-22.
//

import UIKit

class ViewController: UIViewController {

    
    // MARK - referencia a la tabla
    @IBOutlet weak var showDataTablaView: UITableView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        showDataTablaView.dataSource=self
        
        
    }


}

