//
//  ViewControllerQueso.swift
//  Pizzas
//
//  Created by jesus serrano on 20/08/16.
//  Copyright © 2016 gezuzm. All rights reserved.
//

import UIKit

class ViewControllerQueso: UIViewController {

    var tam : String = ""
    var masa : String = ""
    
    @IBOutlet weak var selectorQueso: UISegmentedControl!
    
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
        // Pass the selected object to the new view controller
        
        let sigVistaIngredientes = segue.destinationViewController as! ViewControllerIngredientes
        
        sigVistaIngredientes.tam = tam
        sigVistaIngredientes.masa = masa
        sigVistaIngredientes.queso = RegresaTipoQueso(selectorQueso.selectedSegmentIndex)
    }
    
    
    func RegresaTipoQueso(indice : Int)-> String
    {
        if (indice == 0)
        {
            return "Cheddar"
        }
        else if (indice == 1)
        {
            return "Mozarella"
        }
        else if (indice == 2)
        {
            return "Parmesano"
        }
        else{
            return "Sin Queso"
        }
    }


}
