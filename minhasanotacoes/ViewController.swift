//
//  ViewController.swift
//  minhasanotacoes
//
//  Created by Anderson Matuchenko on 27/05/20.
//  Copyright © 2020 Anderson Matuchenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtMensagem: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let texto = UserDefaults.standard.object(forKey: "mensagem") {
            txtMensagem.text = texto as! String
        } else {
            txtMensagem.text = ""
        }
        // Do any additional setup after loading the view.
    }


    @IBAction func btnSalvar_Click(_ sender: Any) {
        UserDefaults.standard.set(txtMensagem.text, forKey: "mensagem")
    }
}

