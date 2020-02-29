//
//  ViewController.swift
//  BingeBot
//
//  Created by Abdullah Waleed Hamza Mzaien on 8/19/19.
//  Copyright © 2019 Abdullah Waleed Hamza Mzaien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var Showlist: UIStackView!
    @IBOutlet weak var bingeStack: UIStackView!
    @IBOutlet weak var addmoviestack: UIStackView!
    @IBOutlet weak var AddingArea: UITextField!
    @IBOutlet weak var showlistarray: UILabel!
    @IBOutlet weak var selectedmovie: UILabel!
    @IBOutlet weak var spoken: UILabel!
    @IBOutlet weak var addingbutton: UIButton!
    
    
    var shows:[String] = []
   
    override func viewDidLoad() {
        super.viewDidLoad()
       Showlist.isHidden = true
        bingeStack.isHidden = true
        
    }
    @IBAction func gessepressed(_ sender: Any) {
        selectedmovie.text = shows.randomElement()
        spoken.isHidden = false
        selectedmovie.isHidden = false
    }
    func udatinglist()  {
        showlistarray.text = shows.joined(separator: ", ")
    }
    @IBAction func addshowpressed(_ sender: Any) {
       
        guard let showName = AddingArea.text  else { return  }
        if !(showName.isEmpty){
            
        
        shows.append(showName)
       // print(shows)
        
        udatinglist()
        AddingArea.text = ""
        Showlist.isHidden = false
        if shows.count>1{
            bingeStack.isHidden = false
            spoken.isHidden = true
            selectedmovie.isHidden = true
        }
        }else{
        
            print ("not input")
            
        }
    }

}

