//
//  MessageViewController.swift
//  Mensagem
//
//  Copyright © 2017 Rafaela Galdino. All rights reserved.
//

import UIKit

class MessageViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        message = Message()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! MessageColorViewController
        vc.message = message
    }
}

extension MessageViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { // função acessada quando o usuário clica no botão concluir
        message.text = textField.text!
        lbMessage.text = textField.text!
        textField.resignFirstResponder() // teclado desaparece assim que o texto for atualizado
        return true
    }
}

extension MessageViewController: ColorPickerDelegate {
    func applyColor(color: UIColor) {
        message.textColor = color
        lbMessage.textColor = color
    }
}
