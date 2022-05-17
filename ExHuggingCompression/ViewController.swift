//
//  ViewController.swift
//  ExHuggingCompression
//
//  Created by Jake.K on 2022/05/17.
//

import UIKit

class ViewController: UIViewController {
  private let containerView: UIView = {
    let view = UIView()
    view.backgroundColor = .clear
    view.layer.borderWidth = 1
    view.layer.borderColor = UIColor.gray.cgColor
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  private let sampleView: UIView = {
    let view = UIView()
    view.backgroundColor = .orange
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  private let sampleLabel: UILabel = {
    let label = UILabel()
    label.text = " (label1) 일리삼사오륙칠팔구십"
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  private let sample2Label: UILabel = {
    let label = UILabel()
    label.text = " (label2) "
    label.translatesAutoresizingMaskIntoConstraints = false
    label.setContentCompressionResistancePriority(.required, for: .horizontal)
    return label
  }()
  private let sample3Label: UILabel = {
    let label = UILabel()
    label.text = " (label3) "
    label.translatesAutoresizingMaskIntoConstraints = false
    label.setContentCompressionResistancePriority(.required, for: .horizontal)
    return label
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.view.addSubview(self.containerView)
    self.view.addSubview(self.sampleView)
    self.view.addSubview(self.sampleLabel)
    self.view.addSubview(self.sample2Label)
    self.view.addSubview(self.sample3Label)
    
    NSLayoutConstraint.activate([
      self.containerView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
      self.containerView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
      self.containerView.heightAnchor.constraint(equalToConstant: 200),
      self.containerView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
    ])
    NSLayoutConstraint.activate([
      self.sampleView.leftAnchor.constraint(equalTo: self.containerView.leftAnchor),
      self.sampleView.bottomAnchor.constraint(equalTo: self.containerView.bottomAnchor),
      self.sampleView.topAnchor.constraint(equalTo: self.containerView.topAnchor),
      self.sampleView.widthAnchor.constraint(equalToConstant: 120)
    ])
    NSLayoutConstraint.activate([
      self.sampleLabel.leftAnchor.constraint(equalTo: self.sampleView.rightAnchor),
      self.sampleLabel.bottomAnchor.constraint(equalTo: self.containerView.bottomAnchor),
      self.sampleLabel.topAnchor.constraint(equalTo: self.containerView.topAnchor),
    ])
    NSLayoutConstraint.activate([
      self.sample2Label.leftAnchor.constraint(equalTo: self.sampleLabel.rightAnchor),
      self.sample2Label.bottomAnchor.constraint(equalTo: self.containerView.bottomAnchor),
      self.sample2Label.topAnchor.constraint(equalTo: self.containerView.topAnchor),
    ])
    NSLayoutConstraint.activate([
      self.sample3Label.leftAnchor.constraint(equalTo: self.sample2Label.rightAnchor),
      self.sample3Label.rightAnchor.constraint(equalTo: self.containerView.rightAnchor),
      self.sample3Label.bottomAnchor.constraint(equalTo: self.containerView.bottomAnchor),
      self.sample3Label.topAnchor.constraint(equalTo: self.containerView.topAnchor),
    ])

    // horizontal 모두 UILayoutPriority(rawValue: 250.0)
    print(self.containerView.contentHuggingPriority(for: .horizontal))
    print(self.sampleView.contentHuggingPriority(for: .horizontal))
    print(self.sampleLabel.contentHuggingPriority(for: .horizontal))
    print(self.sample2Label.contentHuggingPriority(for: .horizontal))

    // vertical 모두 UILayoutPriority(rawValue: 750.0)
    print(self.containerView.contentCompressionResistancePriority(for: .vertical))
    print(self.sampleView.contentCompressionResistancePriority(for: .vertical))
    print(self.sampleLabel.contentCompressionResistancePriority(for: .vertical))
    print(self.sample2Label.contentCompressionResistancePriority(for: .vertical))
  }
}
