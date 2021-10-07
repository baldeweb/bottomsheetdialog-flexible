//
//  Button.swift
//  bottomsheetdialog-ios
//
//  Created by Wallace on 06/10/21.
//

import Foundation
import UIKit

class Button: UIButton {
    
    private var button: UIButton?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        button = UIButton(frame: frame)
    }
    
    func Build(context: UIViewController, style: ButtonStyleEnum, title: String, selector: Selector) -> UIButton {
        button?.setTitle(title, for: .normal)
        button?.addTarget(context, action: selector, for: .touchUpInside)
        self.setStyle(style)
        return button!
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setStyle(_ buttonType: ButtonStyleEnum) {
        switch buttonType {
        case .DEFAULT:
            defaultButton()
            break
        case .RED:
            redButton()
            break
        default:
            defaultButton()
            break
        }
    }
    
    private func defaultButton() {
        button?.setTitleColor(.white, for: .normal)
        button?.backgroundColor =  hexStringToUIColor(hex: "#1565C0")
        button?.layer.cornerRadius = 25
        button?.layer.masksToBounds = true
    }
    
    private func redButton() {
        button?.setTitleColor(.white, for: .normal)
        button?.backgroundColor = .red
        button?.layer.cornerRadius = 25
        button?.layer.masksToBounds = true
    }
}
