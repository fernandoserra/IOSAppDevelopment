//
//  Tabla.swift
//  IOSAppDevelepment
//
//  Created by Fernando Serra on 23-03-22.
//
import UIKit

class TablaController: UIViewController {
    
    // MARK - referencia a la tabla
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "mi-celda")
    
    }
}


extension TablaController:UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return 50
    }
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mi-celda", for: indexPath)
        cell.textLabel?.text = "Celda #\(indexPath.row)"
        return cell
    }
    
}
