//
//  SecondViewController.swift
//  delegateTest
//
//  Created by İbrahim Erdogan on 4.01.2023.
//

import UIKit

protocol SecondViewDelegate : AnyObject{
    func changeColor()
}

class SecondViewController: UIViewController {

    weak var delegate : SecondViewDelegate?
    
    let changeButton : UIButton = {
        let button = UIButton()
        button.setTitle("Change", for: .normal)
        button.backgroundColor = .green
        button.addTarget(self, action: #selector(changeColor), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        style()
        layout()
        // Do any additional setup after loading the view.
    }
    
    func style()
    {
        changeButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(changeButton)
       
    }
    
    func layout()
    {
        NSLayoutConstraint.activate([
            changeButton.widthAnchor.constraint(equalToConstant: 100),
            changeButton.heightAnchor.constraint(equalToConstant: 100),
            changeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            changeButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func changeColor()
    {
        delegate?.changeColor()
    }
}
