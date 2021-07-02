//
//  ViewController.swift
//  Homework2
//
//  Created by Эльмира Байгулова on 02.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    
    let username = "Admin"
    let password = "Admin"
    
    @IBAction func signInButton(_ sender: UIButton) {
        if username == self.username && password == self.password {
            performSegue(withIdentifier: "ContactTableViewCell", sender: nil))
        }
    }
    
    var data : [ContactsCellData] = [ContactsCellData(image: UIImage(systemName: "person.fill") ?? UIImage(), name: "Elmira", surName: "Baigulova", job: "student", phoneNumber: "79273003444", comment:  "cool girl"),
                                     ContactsCellData(image: UIImage(systemName: "person.fill") ?? UIImage(), name: "Rinat", surName: "Baigulov", job: "designer", phoneNumber: "79273003444", comment:  " cool designer "),
                                     ContactsCellData(image: UIImage(systemName: "person.fill") ?? UIImage(), name: "Marat", surName: "Mirzayevich", job: "KFU", phoneNumber: "123456789", comment:  " cool teacher"),
                                     ContactsCellData(image: UIImage(systemName: "person.fill") ?? UIImage(), name: "Mikhail", surName: "Mikhailovich", job: "KFU", phoneNumber: "123456789", comment: " just cool person ")]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        83
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        guard let contactInformationViewController = storyboard?.instantiateViewController(identifier: "DetailViewController") as? DetailViewController else { return }
        
        contactInformationViewController.contact = data[indexPath.row]
        
        present(contactInformationViewController, animated: true)
        
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView,numberOfRowsInSection section: Int) -> Int {
        data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContactTableViewCell", for: indexPath) as? ContactTableViewCell else { return UITableViewCell() }
        cell.setData(contact: data[indexPath.row])
        return cell
        
        
    }
}

struct ContactsCellData {
    var image : UIImage
    var name : String
    var surName : String
    var job : String
    var phoneNumber : String
    var comment : String
}

