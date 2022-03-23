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
        
        showDataTablaView.register(UITableViewCell.self, forCellReuseIdentifier: "mi-celda")
    }


}


//MARK - UITableViewDataSource
extension ViewController: UITableViewDataSource{
    //1) Numero de filas que tendra nuestra tabla
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
        //return dataSource.count
    }
    
    //2) Metodo para sabes que celdas deben mostrarse
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "mi-celda", for: indexPath)
        
          cell.textLabel?.text = "Soy la celda #\(indexPath.row)"
        
 
    
        
        return cell
    }
}

