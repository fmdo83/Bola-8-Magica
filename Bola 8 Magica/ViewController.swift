//
//  ViewController.swift
//  Bola 8 Magica
//
//  Created by Franco Maximiliano DAlessio Ocampo on 3/10/16.
//  Copyright © 2016 Franco DAlessio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var Frase: UILabel!
    
    var frases = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Frase.lineBreakMode = .byWordWrapping
        Frase.numberOfLines = 0
        frases.append("En mi opinión, si")
        frases.append("Es cierto")
        frases.append("Es decididamente asi")
        frases.append("Probablemente")
        frases.append("Buen pronóstico")
        frases.append("Todo apunta a que si")
        frases.append("Sin duda")
        frases.append("Si")
        frases.append("Si - definitivamente")
        frases.append("Debes confiar en ello")
        frases.append("Respuesta vaga, vuelve a intentarlo")
        frases.append("Pregunta en otro momento")
        frases.append("Será mejor que no te lo diga ahora")
        frases.append("No puedo predecirlo ahora")
        frases.append("Concéntrate y vuelve a preguntar")
        frases.append("No cuentes con ello")
        frases.append("Mi respuesta es no")
        frases.append("Mis fuentes me dicen que no")
        frases.append("Las perspectivas no son buenas")
        frases.append("Muy dudoso")
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        self.Frase.alpha = 0
        let fraseNumero = Int(arc4random_uniform(20))
        self.Frase.text = frases[fraseNumero]
        UIView.animate(withDuration: 5.0, animations:
            {
                self.Frase.alpha = 1.0
        })
        
    }
}

