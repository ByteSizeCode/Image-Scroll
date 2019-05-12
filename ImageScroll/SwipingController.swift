//
//  SwipingController.swift
//  ImageScroll
//
//  Created by Isaac Raval on 5/11/19.
//  Copyright © 2019 Isaac Raval. All rights reserved.
//

import UIKit

class SwipingController: UICollectionViewController {
    
    //For later use
    let imageNamesToDisplayInEachCell = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Misc setup
        setup()
        
    }
}

extension SwipingController {
    func setup() {
        collectionView.backgroundColor = .white //Set background color
        collectionView.isPagingEnabled = true //Remove free-range scrolling (snap into place)
        
        //Register cells
        collectionView.register(PageCell.self, forCellWithReuseIdentifier: "cellId")
    }
    
    //Number of cells to return
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    //Cell creation
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! PageCell
        let nameOfImageToUseInCell = imageNamesToDisplayInEachCell[indexPath.row] //Get image that corresponds to current cell
        cell.imageView.image = UIImage(named: nameOfImageToUseInCell) //Changes as user swipes to next cell
        return cell
    }
    
    //Amount of spacing between cells
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}

extension SwipingController: UICollectionViewDelegateFlowLayout {
    //Size of Collection View cells
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //Make each one the full size of the screen
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
}
