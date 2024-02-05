//
//  RemoveRefeicaoViewController.swift
//  eggplant-brownie
//
//  Created by Marcel Leite de Farias on 05/02/24.
//  Copyright © 2024 Alura. All rights reserved.
//

import Foundation
import UIKit

class RemoveRefeicaoViewController {
    
    let controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    
    //closure
    
    func exibe(_ refeicao: Refeicao, handler: @escaping (UIAlertAction) -> Void) {
        let alerta = UIAlertController(title: refeicao.nome, message: refeicao.refeicaoDetalhes(), preferredStyle: .alert)
        let botaoCancelar = UIAlertAction(title: "cancelar", style: .cancel)
        
        alerta.addAction(botaoCancelar)
        
        let botaoRemover = UIAlertAction(title: "Remover", style: .destructive, handler: handler)
        alerta.addAction(botaoRemover)
        
        controller.present(alerta, animated: true, completion: nil)
    }
}
