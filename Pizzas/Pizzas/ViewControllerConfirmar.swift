//
//  ViewControllerConfirmar.swift
//  Pizzas
//
//  Created by jesus serrano on 20/08/16.
//  Copyright © 2016 gezuzm. All rights reserved.
//

import UIKit

class ViewControllerConfirmar: UIViewController {

    var tam : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingredientes : String  = ""
    
    
    @IBOutlet weak var pedido: UILabel!
    
    
    @IBOutlet weak var btnContinuar: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if (tam != "")
        {
             btnContinuar.enabled = true
            pedido.textColor = UIColor.cyanColor()
        pedido.text = "Tamaño : " + tam  +
        " - Masa : " + masa +
        " - Queso: " + queso +
        " - Ingredientes: " + ingredientes
           
        }
        else{
            btnContinuar.enabled = false
            pedido.textColor = UIColor.redColor()
            pedido.text = ingredientes
        }
        
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
        
      //  let sigVistaFinal
    }
    

}
