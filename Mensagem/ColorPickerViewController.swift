//
//  ColorPickerViewController.swift
//  Mensagem
//
//  Copyright © 2019 Rafaela Galdino. All rights reserved.
//

import UIKit

protocol ColorPickerDelegate: class { // O delegado que adota o protocolo deve ser uma classe
    func applyColor(color:UIColor)
}

class ColorPickerViewController: UIViewController {

    @IBOutlet weak var viColor: UIView!
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var slideBlue: UISlider!
    
    weak var delegate: ColorPickerDelegate?
        
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func changeColor(_ sender: UISlider) {
        viColor.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(slideBlue.value), alpha: 1.0)
    }
    
    @IBAction func chooseColor(_ sender: UIButton) {
        delegate?.applyColor(color: viColor.backgroundColor!)
        dismiss(animated: true, completion: nil)
    }
    
}
