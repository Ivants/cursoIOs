//
//  ViewController.swift
//  MyPrimeraApp
//
//  Created by Mck on 07/07/17.
//  Copyright © 2017 Mck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Con esta variable vamos a hacer la conexion entre la parte visual y el codigo
    //Tambien puedo crearlo con ctl y jalandolo hasta el codigo
    
    //Strong -> El valor por defecto de las variables sin nombres es strong, no va a poder ser redefinida, arc (automatic reference counting)
    //Weak -> La podemos reasignar
    //Unowned -> Parecida a Weak, pero esta variable nunca va a tener el valor de nil pero en tiempo de ejecución
    
    //Interface Builder  (IB)
    //IBOutlet se encarga de conectar cualquier elemento grafico con el codigo
    
    //Las acciones y/o eventos se definen con @IBAction
    

    @IBOutlet weak var mtextField: UITextField!
    @IBOutlet weak var mLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //mLabel.text = "Este es un nuevo mensaje"
    }
    
    @IBAction func onClick(_ sender: Any) {
        let texto = mtextField.text!
        mLabel.text = texto
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

