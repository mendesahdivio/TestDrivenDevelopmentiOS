//
//  ViewController.swift
//  TestDrivenDevelopmentApp
//
//  Created by ahdivio mendes on 09/10/23.
//

import UIKit

class ViewController: UIViewController {
  
//view componets
  private let labelView: UILabel = {
    let label = UILabel()
    label.text = "Movies"
    label.font = .systemFont(ofSize: 30)
    label.textColor = .black
    label.translatesAutoresizingMaskIntoConstraints = false
    label.sizeToFit()
    label.backgroundColor = .clear
    label.textAlignment = .center
    return label
  }()
  
  private let tableView: UITableView = {
    let tableView = UITableView()
    tableView.rowHeight = 90
    tableView.estimatedRowHeight = 90
    tableView.translatesAutoresizingMaskIntoConstraints = false
    return tableView
  }()
  
  private lazy var vStackView: UIStackView = {
    let stackView = UIStackView(arrangedSubviews: [
      labelView,
      tableView
    ])
    stackView.axis = .vertical
    stackView.spacing = 10
    stackView.alignment = .center
    stackView.distribution = .fillProportionally
    stackView.translatesAutoresizingMaskIntoConstraints = false
    return stackView
  }()

  //view did load
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .blue
    addToView(vStackView)
    setContraitsForStackView(vStackView, tableView)
    linkCell(tableView)
  }
}


extension ViewController {
  private final func addToView(_ stackView: UIStackView) {
    view.addSubview(stackView)
  }
  
  private final func setContraitsForStackView(_ vstack: UIStackView, _ tableView: UITableView) {
    NSLayoutConstraint.activate([
      vstack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
      vstack.bottomAnchor.constraint(equalTo: view.bottomAnchor),
      vstack.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 10),
      vstack.trailingAnchor.constraint(greaterThanOrEqualTo: view.trailingAnchor, constant: -10),
      vstack.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -20),
      labelView.widthAnchor.constraint(equalTo: vstack.widthAnchor),
      tableView.heightAnchor.constraint(equalToConstant: view.frame.height - 10 - 100),
      tableView.widthAnchor.constraint(equalTo: vstack.widthAnchor, constant: -10)
    ])
  }
  
  private final func linkCell(_ tableView: UITableView) {
    tableView.register(CustomTabelViewCell.self, forCellReuseIdentifier: CustomTabelViewCell.id)
  }
}





class CustomTabelViewCell: UITableViewCell {
  
  static let id: String = "CustomIdCell"
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
