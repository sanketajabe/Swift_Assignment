//
//  ViewController.swift
//  collectionView
//
//  Created by Apple on 06/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var collectionView: UICollectionView!
    var arr = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializeDatasourceAndDelegate()
      
// Mark :- Appending Values to a Array..
        for i in 0...11{
            arr.append(i.description)
        }
    }
// Mark :- InitializeDatasourceAndDelegate..
    
    func initializeDatasourceAndDelegate(){
        collectionView.dataSource = self
        collectionView.delegate = self
    }
 }

// Mark :- Binding Up Data To a Collection View..

 extension ViewController : UICollectionViewDataSource{
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return arr.count
        }
        
        func collectionView(_ collectionView: UICollectionView,
                            cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
            cell.mylabel.text = arr[indexPath.row]
            cell.mylabel.textColor = .black
            // cell.imageView.image = UIImage(named: "images")
            cell.backgroundColor = .purple
            return cell
        }
    }

// Mark :- Give Size To a Collection View Cell..

extension ViewController : UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100.0, height: 100.0)
    }
}

extension ViewController : UICollectionViewDelegate{
}
