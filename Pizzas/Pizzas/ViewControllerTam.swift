//
//  ViewControllerTam.swift
//  Pizzas
//
//  Created by jesus serrano on 20/08/16.
//  Copyright © 2016 gezuzm. All rights reserved.
//

import UIKit

class ViewControllerTam: UIViewController {

    @IBOutlet weak var selectorTam: UISegmentedControl!
   
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
        
        let sigVistaMasa = segue.destinationViewController as! ViewControllerMasa
        
        sigVistaMasa.tam = RegresaTamPizza(selectorTam.selectedSegmentIndex)
        
    }
 

    func RegresaTamPizza(indice : Int)-> String
    {
        if (indice == 0)
        {
            return "Chica"
        }
        else if (indice == 1)
        {
            return "Mediana"
        }
        else
        {
            return "Grande"
        }
    }
}
