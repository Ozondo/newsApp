//
//  ViewController.swift
//  newsApp
//
//  Created by Егор Иванов on 12.09.2023.
//

import UIKit

final class FirstViewController: UIViewController {
    private lazy var newsTableView = UITableView(frame: CGRect.zero, style: .plain)

    override func viewDidLoad() {
        super.viewDidLoad()
        viewSetup()
        elementsSetup()
        constrainSetup()
    }
}

private extension FirstViewController{
    func viewSetup(){
        view.backgroundColor = .white
        view.addSubview(newsTableView)
    }
    func elementsSetup(){
        newsTableView.backgroundColor = .black
    }
    func constrainSetup(){
        newsTableView.translatesAutoresizingMaskIntoConstraints = false

        newsTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        newsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true

        newsTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true

        newsTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
    }
}
