//
//  TableCustomViewController.swift
//  IOSAppDevelepment
//
//  Created by Fernando Serra on 31-03-22.
//

import UIKit

class TableCustomViewController: UIViewController {
    
    private var dataSource = [
        "@pepe",
        "@pancho",
        "@carlos",
        "@luisa"
    ]

    @IBOutlet weak var tableData: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableData.dataSource = self

        tableData.register(UINib(nibName: "CardViewCell", bundle: nil), forCellReuseIdentifier: "CardViewCell")
     
        tableData.delegate = self
    }

}


//MARK - UITableViewDataSource
extension TableCustomViewController: UITableViewDataSource {
    //1) Numero de filas que tendra nuestra tabla
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return 50
        return dataSource.count
    }
    
    //2) Metodo para sabes que celdas deben mostrarse
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //let cell = tableView.dequeueReusableCell(withIdentifier: "mi-celda", for: indexPath)
        
        //  cell.textLabel?.text = "Soy la celda #\(indexPath.row)"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CardViewCell", for: indexPath)
        
        //(cell as? TweetTableViewCell)?.setupCell(username: "@usuario\(indexPath.row)", message: "Mensaje numero \(indexPath.row)") //de esta manera tambien funciona
        
        if let newCell = cell as? CardViewCell{
           // newCell.setupCell(username: "@usuario\(indexPath.row)", message: "Mensaje numero \(indexPath.row)")
            
            newCell.setupCell(username: dataSource[indexPath.row])
        }
      
        
        return cell
    }
}


//MARK - UITableViewDelegate
extension TableCustomViewController:  UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("La celda #\(indexPath.row) fue seleccionada")
    }
}
