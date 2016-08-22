//
//  ViewControllerMasa.swift
//  Pizzas
//
//  Created by jesus serrano on 20/08/16.
//  Copyright © 2016 gezuzm. All rights reserved.
//

import UIKit

class ViewControllerMasa: UIViewController {

    var tam : String? = nil
    
    @IBOutlet weak var selectorMasa: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if (tam != nil)
        {
            print("\(tam!)")
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
       let sigVistaQueso = segue.destinationViewController as! ViewControllerQueso
        
        sigVistaQueso.tam = tam!
        sigVistaQueso.masa = RegresaTipoMasa(selectorMasa.selectedSegmentIndex)
    }
    
    func RegresaTipoMasa(indice : Int)-> String
    {
        if (indice == 0)
        {
            return "Delgada"
        }
        else if (indice == 1)
        {
            return "Crujiente"
        }
        else{
            return "Gruesa"
        }
    }

    
    

}
