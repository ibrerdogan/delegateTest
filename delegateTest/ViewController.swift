//
//  ViewController.swift
//  delegateTest
//
//  Created by İbrahim Erdogan on 4.01.2023.
//

import UIKit

class ViewController: UIViewController {

    let button : UIButton = {
        let button = UIButton()
        button.setTitle("Dokan", for: .normal)
        button.backgroundColor = .green
        button.addTarget(self, action: #selector(tabButton), for: .touchUpInside)
        return button
    }()
    
    let second = SecondViewController()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .white
        second.delegate = self
        style()
        layout()
        // Do any additional setup after loading the view.
    }
    
    func style()
    {
        button.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(button)
    }
    
    func layout()
    {
        NSLayoutConstraint.activate([
            button.widthAnchor.constraint(equalToConstant: 100),
            button.heightAnchor.constraint(equalToConstant: 100),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    func gitTest()
    {
        print("dasda")
        print("bakıcaz")
    }
    
   @objc func tabButton()
    {
        print("navigate")
        //self.navigationController?.pushViewController(second, animated: true)
        present(second, animated: true)
    }
    
    func iki()
    {
        print("alşkdşlas")
    }
    


}

extension ViewController : SecondViewDelegate
{
    func changeColor() {
        button.backgroundColor = .purple
        second.dismiss(animated: true)
    }
    
    
}

