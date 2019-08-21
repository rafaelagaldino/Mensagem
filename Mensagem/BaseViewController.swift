//
//  BaseViewController.swift
//  Mensagem
//
//  Copyright © 2019 Rafaela Galdino. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    @IBOutlet weak var lbMessage: UILabel!
    
    var message: Message!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func changeColor(sender: UIButton) {
        if let reference = self as? ColorPickerDelegate {
            let colorPicker = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as! ColorPickerViewController
            colorPicker.modalPresentationStyle = .overCurrentContext // modalPresentationStyle - estilo de apresentação modal / overCurrentContext - a tela chamada vai ficar por cima da tela que chamou
            colorPicker.delegate = reference
            present(colorPicker, animated: true, completion: nil)
        }
    }
}
