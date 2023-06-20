

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet var tableView: UITableView!
    
    var items : Array<Post> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initViews()
    }

    // MARK Method
    
    func initViews(){
    
        initNavBar()
        tableView.dataSource = self
        tableView.delegate = self
        
        items.append(Post(name: "Bakhrombek 1", content: "DRESDEN", image: "dresden"))
        items.append(Post(name: "Bakhrombek 2", content: "1", image: "DSC01923"))
        
        items.append(Post(name: "Bakhrombek 3", content: "2", image: "1"))
        items.append(Post(name: "Bakhrombek 4", content: "3", image: "2"))
        
    }
    
    
    
    // MARK: - TableView
    func initNavBar(){
        title = "Home"
        let alfa = UINavigationBarAppearance()
        alfa.configureWithOpaqueBackground()
        alfa.backgroundColor = UIColor.black.withAlphaComponent(0.2)
        alfa.titleTextAttributes = [.foregroundColor: UIColor.black] // With a red background, make the title more readable.
        navigationItem.standardAppearance = alfa
        navigationItem.scrollEdgeAppearance = alfa
        navigationItem.compactAppearance = alfa
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let item = items[indexPath.row]
        
        let cell = Bundle.main.loadNibNamed("PostTableViewCell", owner: self, options: nil)?.first as! PostTableViewCell
        
        cell.nameLabel.text = item.name
        cell.contentLabel.text = item.content
        cell.profileImageView.image = UIImage(named: item.image!)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

}
