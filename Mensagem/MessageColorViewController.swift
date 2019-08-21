//
//  MessageColorViewController.swift
//  Mensagem
//
//  Copyright © 2017 Rafaela Galdino. All rights reserved.
//

import UIKit

class MessageColorViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbMessage.text = message.text // propriedades herdadas da clase BaseViewController
        lbMessage.textColor = message.textColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ScreenColorViewController
        vc.message = message
    }
}

extension MessageColorViewController: ColorPickerDelegate {
    func applyColor(color: UIColor) {
        message.backgroundColor = color
        lbMessage.backgroundColor = color
    }
}
