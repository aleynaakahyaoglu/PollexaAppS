//
//  MainController.swift
//  Pollexa
//
//  Created by Aleyna on 1.04.2024.
//


import UIKit

class MainController: UIViewController {
    
    @IBOutlet weak var survayCollection: UICollectionView!
    @IBOutlet weak var pollView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var showDetailButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    
    var question : [Question] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        pollView.layer.cornerRadius = pollView.frame.size.height / 5
        reloadCollection()
        
       
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        prepareLayout()
    }
    
    var survay: [Survay]? {
        didSet{
            collectionView.reloadData()
        }
    }
    
    func reloadCollection(){
        
        var q = Question()
        
        q.userName = "Jane Doe"
        q.title = "Nature is the ultimate artist, painting the world with vibrant colors and intricate patterns.🌿🌼 #NatureLover"
        q.userIcon = "NatureImage"
        q.imageNameFirst = "CampImage"
        q.imageNameSecond = "NatureImage"
        
        question.append(q)
        
        q = Question()
        q.userName = "Marry Lou"
        q.title = "Nature's beauty knows no bounds. Let's embrace and preserve it. 🌿 #Nature"
        q.userIcon = "userWoman"
        q.imageNameFirst = "AutumnImage"
        q.imageNameSecond = "rndPostImage"
        
        question.append(q)
        
        q = Question()
        q.userName = "Denny Pole"
        q.title = "Nature is the most biggest"
        q.userIcon = "userIconMan"
        
        question.append(q)
        
    }
    
    func prepareLayout() {
        
        let nib = UINib(nibName: "PostCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "survay")
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = 2
        layout.minimumLineSpacing = 2
        collectionView.setCollectionViewLayout(layout, animated: false)
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }
    
    @IBAction func openPolls(_ sender: Any) {
        guard let controller = self.storyboard?.instantiateViewController(withIdentifier: "PollsDetails") else {return}
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
extension MainController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "survay", for: indexPath) as! PostCell
        
        let q = question[indexPath.row]
        
        cell.detailsLabel.text = q.title
        cell.userName.text = q.userName
        cell.userIcon.image = UIImage(named: q.userIcon!)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
     return question.count
  
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 140)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        let borderWidth: CGFloat = 2
        return UIEdgeInsets(top: borderWidth, left: borderWidth, bottom: borderWidth, right: borderWidth)
    }
    

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "PollsDetails") as! PollsDetailsController
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
}

