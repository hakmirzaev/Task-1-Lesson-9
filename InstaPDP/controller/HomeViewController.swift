//
//  HomeViewController.swift
//  InstaPDP
//
//  Created by Bekhruz Hakmirzaev on 25/04/22.
//

import UIKit

class HomeViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource{
  
    var items: Array<Post> = Array()
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        initViews()
    }
    // MARK: - Method
    func initViews(){
        tableView.delegate = self
        tableView.dataSource = self
        setNavigationBar()
        
        items.append(Post(fullName: "Sherzod", user_img: "im_person1", post_img1: "im_post1", post_img2: "im_post2"))
        items.append(Post(fullName: "Malika", user_img: "im_person2", post_img1: "im_post1", post_img2: "im_post2"))
    }
    
    func setNavigationBar(){
        let camera = UIImage(named: "ic_camera")
        let send = UIImage(named: "ic_send")
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: camera, style: .plain, target: self, action: #selector(leftTapped))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: send, style: .plain, target: self, action: #selector(rightTapped))
        title = "Instagram"
    }
    // MARK: - Action
    
    @objc func leftTapped(){
        
    }
    
    @objc func rightTapped(){
        
    }
    
    // MARK: - Table View
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        let cell = Bundle.main.loadNibNamed("PostTableViewCell", owner: self, options: nil)?.first as! PostTableViewCell
        cell.fullnameLabel.text = item.fullName
        cell.profileImageView.image = UIImage(named: item.user_img!)
        cell.postImageView1.image = UIImage(named: item.post_img1!)
        cell.postImageView2.image = UIImage(named: item.post_img2!)
        
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 600
    }
}
