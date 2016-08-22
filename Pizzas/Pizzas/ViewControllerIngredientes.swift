//
//  ViewControllerIngredientes.swift
//  Pizzas
//
//  Created by jesus serrano on 20/08/16.
//  Copyright © 2016 gezuzm. All rights reserved.
//

import UIKit

class ViewControllerIngredientes: UIViewController {

    var tam : String = ""
    var masa : String = ""
    var queso : String = ""
    
    
    
    @IBOutlet weak var aceituna: UISwitch!
    
    @IBOutlet weak var anchoa: UISwitch!
    
    @IBOutlet weak var cebolla: UISwitch!
    
    
    @IBOutlet weak var jamon: UISwitch!
    
    
    @IBOutlet weak var pavo: UISwitch!
    
    @IBOutlet weak var pepperoni: UISwitch!
    
    @IBOutlet weak var salami: UISwitch!
    
   
    @IBOutlet weak var salchicha: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let sigVistaConfirmar = segue.destinationViewController as! ViewControllerConfirmar
        
        let num : Int = RegresaNumIngredientes()
        
        if (num > 5)
        {
            sigVistaConfirmar.tam = ""
            sigVistaConfirmar.masa = ""
            sigVistaConfirmar.queso = ""
            sigVistaConfirmar.ingredientes = "NO es posible procesar tu pedido, ya que " +
            "seleccionaste mas de 5 ingredientes, favor de regresar a la pantalla anterior y " + "eliminar los sobrantes. " + "gracias."
        }
            else if (num == 0)
        {
            sigVistaConfirmar.tam = ""
            sigVistaConfirmar.masa = ""
            sigVistaConfirmar.queso = ""
            sigVistaConfirmar.ingredientes = "NO es posible procesar tu pedido. Es necesario " +
                "seleccionar por lo menos 1 ingrediente. Favor de regresar a la pantalla anterior y elegirlo, " + "gracias."
        }
        else{
        
        sigVistaConfirmar.tam = tam
        sigVistaConfirmar.masa = masa
        sigVistaConfirmar.queso = queso
        sigVistaConfirmar.ingredientes = RegresaIngredientes()
        }
    }
    
    
    func RegresaNumIngredientes() -> Int
    {
        var contador : Int = 0
        
        if (aceituna.on == true)
        {
        contador += 1
        }
        
        if (anchoa.on == true)
        {
        contador += 1
        }
        
        if (cebolla.on == true)
        {
           contador += 1
        }
        
        if (jamon.on == true)
        {
              contador += 1
        }
        
        if (pavo.on == true)
        {
              contador += 1
        }
        
        if (pepperoni.on == true)
        {
              contador += 1
        }
        
        if (salami.on == true)
        {
              contador += 1
        }
        
        if (salchicha.on == true)
        {
              contador += 1
        }
        
        return contador
        
    }
    
    
    func RegresaIngredientes() -> String
    {
        var ingredientes : String = ""
        
        if (aceituna.on == true)
        {
            ingredientes += "aceitunas,"
        }
        
        if (anchoa.on == true)
        {
            ingredientes += "anchoas,"
        }
        
        if (cebolla.on == true)
        {
            ingredientes += "cebolla,"
        }
        
        if (jamon.on == true)
        {
            ingredientes += "jamon,"
        }
        
        if (pavo.on == true)
        {
            ingredientes += "pavo,"
        }
        
        if (pepperoni.on == true)
        {
             ingredientes += "pepperoni,"
        }
        
        if (salami.on == true)
        {
            ingredientes += "salami,"
        }
        
        if (salchicha.on == true)
        {
             ingredientes += "salchicha"
        }
        
        return ingredientes
        
    }

    
    @IBAction func btnContinuar(sender: UIButton) {
        
        if (RegresaNumIngredientes() > 5 )
        {
            
        }
    }

}
