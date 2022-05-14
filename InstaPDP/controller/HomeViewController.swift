//
//  HomeViewController.swift
//  InstaPDP
//
//  Created by Bekhruz Hakmirzaev on 25/04/22.
//

import UIKit

class HomeViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {

    var items: Array<Post> = Array()
    
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        initViews()
    }
    // MARK: - Method
    func initViews(){
        
        tableView.dataSource = self
        tableView.delegate = self
        addNavigation()
        
        items.append(Post(name: "Dwayne Johnson", time: "Few seconds ago", content: "Congratulations on your birthday! Wishing you truly fabulous day.", profileImage: "profileImage", postPhoto: "postImage"))
        items.append(Post(name: "Donald J.Trump", time: "A week ago", content: "An exceptional president for an ordinary time - Egypt independent", profileImage: "profileImage2", postPhoto: "postImage2"))
        items.append(Post(name: "Dwayne Johnson", time: "Few seconds ago", content: "Congratulations on your birthday! Wishing you truly fabulous day.", profileImage: "profileImage", postPhoto: "postImage"))
        items.append(Post(name: "Donald J.Trump", time: "A week ago", content: "An exceptional president for an ordinary time - Egypt independent", profileImage: "profileImage2", postPhoto: "postImage2"))
    }
    
    func addNavigation(){
      
        title = "Table View"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        let cell = Bundle.main.loadNibNamed("PostTableViewCell", owner: self, options: nil)?.first as! PostTableViewCell
        
        cell.nameLabel.text = item.name
        cell.contentLabel.text = item.content
        cell.profileImageView.image = UIImage(named: item.profileImage!)
        cell.timeLabel.text = item.time
        cell.postImageView.image = UIImage(named: item.postPhoto!)
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
    
    // MARK: - Action
    @IBAction func onLoggedOut(_ sender: Any) {
        sceneDelegate().callSignInController()
    }
    

}
