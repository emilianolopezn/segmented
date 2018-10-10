//
//  ViewController.swift
//  segmented
//
//  Created by Alumno on 09/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBAction func doChangeStatusAlumno(_ sender: Any) {
        tvAlumnos.reloadData()
    }
    
    @IBOutlet weak var scStatus: UISegmentedControl!
    @IBOutlet weak var tvAlumnos: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if scStatus.selectedSegmentIndex == 0 {
            return aprobados.count
        }
        
        return reprobados.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if scStatus.selectedSegmentIndex == 0 {
            let celda = tableView.dequeueReusableCell(withIdentifier: "cellAprobado") as! CeldaAprobadoController
            celda.lblNombre.text = aprobados[indexPath.row]
            return celda
        }
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellReprobado") as! CeldaReprobadoControler
        celda.lblNombre.text = reprobados[indexPath.row]
        return celda
        
    }
    

    var aprobados = ["Juan", "Pedro", "María"]
    var reprobados = ["Martha", "Miguel"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

