//
//  ViewController.swift
//  HitTestExample
//
//  Created by Валентин on 30.08.2025.
//

import UIKit

class ViewController: UIViewController {
    
    let viewRed = UIView()
    let viewBlue = UIView()
    let viewGreen = UIView()
    let viewOrange = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        viewRed.backgroundColor = .red
        viewBlue.backgroundColor = .blue
        viewGreen.backgroundColor = .green
        viewOrange.backgroundColor = .orange
        
        viewRed.translatesAutoresizingMaskIntoConstraints = false
        viewBlue.translatesAutoresizingMaskIntoConstraints = false
        viewGreen.translatesAutoresizingMaskIntoConstraints = false
        viewOrange.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(viewRed)
        view.addSubview(viewBlue)
        
        viewRed.addSubview(viewGreen)
        viewBlue.addSubview(viewOrange)
        
        NSLayoutConstraint.activate([
            viewRed.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            viewRed.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            viewRed.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            viewRed.heightAnchor.constraint(equalToConstant: 300),
            
            viewBlue.topAnchor.constraint(equalTo: viewRed.bottomAnchor, constant: 70),
            viewBlue.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            viewBlue.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            viewBlue.heightAnchor.constraint(equalToConstant: 300),
            
            viewGreen.topAnchor.constraint(equalTo: viewRed.topAnchor, constant: 40),
            viewGreen.leadingAnchor.constraint(equalTo: viewRed.leadingAnchor, constant: 20),
            viewGreen.trailingAnchor.constraint(equalTo: viewRed.trailingAnchor, constant: -20),
            viewGreen.heightAnchor.constraint(equalToConstant: 100),
            
            viewOrange.topAnchor.constraint(equalTo: viewBlue.topAnchor, constant: 40),
            viewOrange.leadingAnchor.constraint(equalTo: viewBlue.leadingAnchor, constant: 20),
            viewOrange.trailingAnchor.constraint(equalTo: viewBlue.trailingAnchor, constant: -20),
            viewOrange.heightAnchor.constraint(equalToConstant: 350),
        ])
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(viewTouched(tapGestureRecognizer: ))))
        viewRed.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(viewTouched(tapGestureRecognizer: ))))
        viewBlue.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(viewTouched(tapGestureRecognizer: ))))
        viewGreen.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(viewTouched(tapGestureRecognizer: ))))
        viewOrange.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(viewTouched(tapGestureRecognizer: ))))
    }

    @objc func viewTouched(tapGestureRecognizer: UITapGestureRecognizer) {
        print("gray view touched")     }
    @objc func viewRedTouched(tapGestureRecognizer: UITapGestureRecognizer) {
        print("red view touched")      }
    @objc func viewBlueTouched(tapGestureRecognizer: UITapGestureRecognizer) {
        print("blue view touched")     }
    @objc func viewGreenTouched(tapGestureRecognizer: UITapGestureRecognizer) {
        print("green view touched")    }
    @objc func viewOrangeTouched(tapGestureRecognizer: UITapGestureRecognizer) {
        print("orange view touched")   }
}

