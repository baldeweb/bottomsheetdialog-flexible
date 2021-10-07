//
//  ViewController.swift
//  bottomsheetdialog-ios
//
//  Created by Wallace on 06/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showBottomSheet(_ sender: Any) {
        print("LOG >> CLICOU")
        let vc = BottomSheetDialogView(
            style: .SINGLE_BUTTON,
            isScrollable: false,
            icon: UIImage(named: "icon_checked_green")!,
            titleLabel: "Titulo",
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin iaculis massa et nisi volutpat laoreet. Mauris nec tincidunt lacus. Quisque consequat mi a sem semper malesuada. Vivamus mauris urna, interdum in urna eu, cursus consectetur est. Praesent malesuada a arcu eu tincidunt. ",
            titleFirstButton: "PRIMEIRO BOTÃO",
            actionFirstButton: {
                print("LOG >> AÇAO PRIMEIRO BOTAO")
            },
            titleSecondButton: "PRIMEIRO BOTÃO",
            actionSecondButton: {
                print("LOG >> AÇAO SEGUNDO BOTAO")
            }
        )!
        vc.modalPresentationStyle = .overCurrentContext
        self.present(vc, animated: false)
    }
    
}

