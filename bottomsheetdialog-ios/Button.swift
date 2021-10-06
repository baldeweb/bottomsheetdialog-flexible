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
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        button = UIButton(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func action(_ target: UIView, _ selector: Selector, _ event: UIControl.Event) -> Button {
        button?.addTarget(target, action: selector, for: event)
        return self
    }
    
    func DefaultButton(_ context: UIViewController, title: String?, selector: Selector?) -> UIButton {
        if title != nil { button?.setTitle(title, for: .normal) }
        button?.setTitleColor(.white, for: .normal)
        button?.backgroundColor =  hexStringToUIColor(hex: "#1565C0")
        if selector != nil { button?.addTarget(context, action: selector!, for: .touchUpInside) }
        button?.layer.cornerRadius = 25;
        button?.layer.masksToBounds = true;
        return button!
    }
}
