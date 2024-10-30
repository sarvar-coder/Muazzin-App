//
//  OpeningVC.swift
//  Muazzin
//
//  Created by Sarvar Boltaboyev on 30/10/24.
//

import Foundation

import UIKit

class OpeningVC: UIViewController {
    
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
        setupTableView()
        setupHeaderView()
    }
    
    private func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.rowHeight = 100
        tableView.backgroundColor = appColor
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    private func setupHeaderView() {
        let header = UIView()
        header.backgroundColor = appColor
        var size = header.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
        size.width = UIScreen.main.bounds.width
        size.height = 200
        header.frame.size = size
        
        tableView.tableHeaderView = header
    }
    
    private func style() {
      
    }
    
    private func layout() {
        
    }
}

// MARK: Table view Data Source
extension OpeningVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Sarvar"
        return cell
    }
    
}

extension OpeningVC: UITableViewDelegate {
    
}
