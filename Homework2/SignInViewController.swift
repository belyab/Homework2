//
//  SignInViewController.swift
//  Homework2
//
//  Created by Эльмира Байгулова on 04.07.2021.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    
    let username = "Admin"
    let password = "Admin"
    
    @IBAction func signInButton(_ sender: UIButton) {
        guard let username = usernameTextField.text, let password = passwordTextField.text else { return }
        if username == self.username && password == self.password {
            guard let contactInformationViewController = storyboard?.instantiateViewController(identifier: "ViewController") as? ViewController else { return }
            
            navigationController?.pushViewController(contactInformationViewController, animated: true)
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
