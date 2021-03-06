//
//  ViewController.swift
//  MyPrimeraApp
//
//  Created by Mck on 07/07/17.
//  Copyright © 2017 Mck. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    //Con esta variable vamos a hacer la conexion entre la parte visual y el codigo
    //Tambien puedo crearlo con ctl y jalandolo hasta el codigo
    
    //Strong -> El valor por defecto de las variables sin nombres es strong, no va a poder ser redefinida, arc (automatic reference counting)
    //Weak -> La podemos reasignar
    //Unowned -> Parecida a Weak, pero esta variable nunca va a tener el valor de nil pero en tiempo de ejecución
    
    //Interface Builder  (IB)
    //IBOutlet se encarga de conectar cualquier elemento grafico con el codigo
    
    //Las acciones y/o eventos se definen con @IBAction
    
    //Se puede cambiar la apariencia del teclado desde las propiedades del TextField
    @IBOutlet weak var mtextField: UITextField!
    @IBOutlet weak var mLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //mLabel.text = "Este es un nuevo mensaje"
        
        //
        //De esta forma se asocia un elemento con el delegate
        //mtextField.delegate = self
    }
    
    //Se manda a llamar de acuerdo al toque (Gestos)
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    
    @IBAction func onClick(_ sender: Any) {
        let texto = mtextField.text!
        mLabel.text = "Esto es una cadena: \(texto)"
        //Haremos que el textFiel ya no sea el first responder
        //Para que el teclado desaparezca a la hora de presionar el boton
        //mtextField.resignFirstResponder()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //Nosotros tenemos que indicarle a la aplicacion que queremos que el boton de enter del teclado tenga una funcionalidad en este caso al dar click en ese boton reasignamos el firstResponder para que el teclado se oculte despues de dar un enter
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        mtextField.resignFirstResponder()
        return false
    }

}

