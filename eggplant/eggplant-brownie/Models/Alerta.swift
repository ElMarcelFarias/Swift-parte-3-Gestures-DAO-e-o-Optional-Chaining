//
//  Alerta.swift
//  eggplant-brownie
//
//  Created by Marcel Leite de Farias on 13/11/23.
//  Copyright © 2023 Alura. All rights reserved.
//

import UIKit

class Alerta {
    
    let controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func exibe(title: String = "Atenção", mensagem: String) {
        let alert = UIAlertController(title: title, message: mensagem, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(ok)
        controller.present(alert, animated: true, completion: nil)
    }
}
