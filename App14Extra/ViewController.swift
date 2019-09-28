//
//  ViewController.swift
//  App14Extra
//
//  Created by ENRIQUE VERGARA  on 9/27/19.
//  Copyright © 2019 ENRIQUE VERGARA . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let boton : UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Dar click aquí", for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.frame = CGRect(x: 100, y: 100, width: 300, height: 100)
        btn.backgroundColor = UIColor.orange
        btn.addTarget(self, action: #selector(clicked), for: .touchUpInside)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .blue
        view.addSubview(boton)
        boton.leftAnchor.constraint(equalTo: view.leftAnchor, constant : 50).isActive = true
//        boton.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        boton.topAnchor.constraint(equalTo: view.topAnchor, constant : 100).isActive = true
//        boton.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        boton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        boton.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }


    @objc func clicked() {
        print("click en boton feo")
    }
    
}

