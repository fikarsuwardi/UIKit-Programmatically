// Add this to SceneDelegate
guard let windowScene = (scene as? UIWindowScene) else { return }
    window = UIWindow(windowScene: windowScene)
    window?.makeKeyAndVisible()
    let controller = ViewController() // Ganti nama kelas viewcontroller awalmu
    let navController = UINavigationController(rootViewController: controller)
    window?.rootViewController = navController

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    view.backgroundColor = .systemRed
    let button = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 40))
    view.addSubview(button)
    button.setTitle("PUSH", for: .normal)
    button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
  }
  
  @objc func buttonClicked() {
    let second = SecondViewController()
    navigationController?.pushViewController(second, animated: true)
  }
}

class SecondViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemBlue
		navigationItem.hidesBackButton = true
  }
}
