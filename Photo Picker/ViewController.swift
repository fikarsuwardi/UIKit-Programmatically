//
//  ViewController.swift
//  PhotoPicker
//
//  Created by Zulfikar Abdul Rahman Suwardi on 05/10/22.
//

import Photos
import PhotosUI
import UIKit

class MyCell: UICollectionViewCell {
  let imageView = UIImageView()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    addSubview(imageView)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    imageView.frame = bounds
  }
}

class ViewController: UIViewController, PHPickerViewControllerDelegate, UICollectionViewDataSource {
  
  private let collectionView: UICollectionView = {
    let layout = UICollectionViewFlowLayout()
    layout.itemSize = CGSize(width: 150, height: 150)
    let c = UICollectionView(frame: .zero, collectionViewLayout: layout)
    c.backgroundColor = .white
    c.register(MyCell.self, forCellWithReuseIdentifier: "cell")
    return c
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.addSubview(collectionView)
    collectionView.dataSource = self
    collectionView.frame = view.bounds
    title = "New Photo Picker"
    navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapAdd))
  }
  
  @objc private func didTapAdd() {
    var config = PHPickerConfiguration(photoLibrary: .shared())
    config.selectionLimit = 3
    config.filter = .images
    let vc = PHPickerViewController(configuration: config)
    vc.delegate = self
    present(vc, animated: true)
  }
  
  func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
    picker.dismiss(animated: true, completion: nil)
    let group = DispatchGroup()
    
    results.forEach { result in
      group.enter()
      result.itemProvider.loadObject(ofClass: UIImage.self) { [weak self] reading, error in
        defer {
          group.leave()
        }
        guard let image = reading as? UIImage, error == nil else{
          return
        }
        self?.images.append(image)
      }
    }
    group.notify(queue: .main) {
      print(self.images.count)
      self.collectionView.reloadData()
    }
  }
  
  private var images = [UIImage]()
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return images.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? MyCell else {fatalError()}
    cell.imageView.image = images[indexPath.row]
    return cell
  }
}

