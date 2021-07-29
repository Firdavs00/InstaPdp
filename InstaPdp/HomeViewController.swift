//
//  HomeViewController.swift
//  InstaPdp
//
//  Created by MacBook Pro on 28/07/21.
//

import UIKit

class HomeViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var tableView: UITableView!
    
    var items: Array<Post> = Array()

    override func viewDidLoad() {
        super.viewDidLoad()
       
        initView()
    }


//    Mark: - Methods
    func initView(){
        tableView.delegate = self
        tableView.dataSource = self
        addNavigationBar()
        items.append(Post(fullname1: "Alisa", user_img1: "personImage1", post_img1: "postImage1"))
        items.append(Post(fullname1: "Jeck", user_img1: "personImage2", post_img1: "postImage2"))
        items.append(Post(fullname1: "Alisa", user_img1: "personImage1", post_img1: "postImage1"))
        items.append(Post(fullname1: "Jeck", user_img1: "personImage2", post_img1: "postImage2"))
        
    }
    func addNavigationBar()  {
        let camera = UIImage(named: "ic_camera")
        let near = UIImage(named: "ic_near")
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: camera, style: .plain, target: self, action: #selector(leftTapped))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: near, style: .plain, target: self, action: #selector(rightTapped))
        title = "Instagram"
    }
    
    
    //    Mark: - Actions
    
    
    @objc func leftTapped(){
        
  }
   @objc func rightTapped(){
    
}
    


    
    
//    Mark: - TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        let cell = Bundle.main.loadNibNamed("PostTableViewCell", owner: self, options: nil)?.first as! PostTableViewCell
        cell.fullname.text = item.fullname1
        cell.user_img.image = UIImage(named: item.user_img1)
        cell.post_img.image = UIImage(named: item.post_img1)
                return cell

    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 500
        }

}
