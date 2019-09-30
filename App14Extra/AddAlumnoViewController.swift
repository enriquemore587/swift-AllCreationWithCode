//
//  AddAlumnoViewController.swift
//  App14Extra
//
//  Created by ENRIQUE VERGARA  on 9/30/19.
//  Copyright © 2019 ENRIQUE VERGARA . All rights reserved.
//

import UIKit

class AddAlumnoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Agregar amigo"
        view.backgroundColor = .azulMarino
        navigationItem.largeTitleDisplayMode = .never
        
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Guardar", style: .done, target: self, action: #selector(save))
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancel))
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @objc func save() {
        
        let alert = UIAlertController(title: "Agregar datos", message: "Ingresa datos primero el nombre y el apellido.", preferredStyle: .alert)

        // trailling closure
        alert.addTextField { (nombre) in nombre.placeholder = "nombre" }
        alert.addTextField{ (paterno) in paterno.placeholder = "apellido"}
        
        let alertActions = UIAlertAction(title: "Guardar de nuevo", style: .default) { (_ a) in
            print("nombre", alert.textFields?[0].text)
            print("apellido", alert.textFields?[1].text)
        }
        
        alert.addAction(alertActions)

        self.present(alert, animated: true)
        
    }

    @objc func cancel() {
        navigationController?.popViewController(animated: true)
    }
}
