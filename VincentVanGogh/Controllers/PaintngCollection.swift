//
//  PaintngCollection.swift
//  VincentVanGogh
//
//  Created by Izabela on 28/07/2018.
//  Copyright © 2018 Izabela. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Painting"

class PaintngCollection: UICollectionViewController {

    var paintings = [
    "Almond Blossom",
    "At Eternity's Gate",
    "Café Terrace at Night",
    "Dr. Gachet",
    "Fishing Boats On The Beach",
    "Girl in White",
    "Houses at Auvers",
    "Irises",
    "Japonaiserie Oiranrn",
    "L'Arlesienne (after Gauguin)",
    "Landscape with Olive Trees",
    "Noon- Rest from Work",
    "Peasant Woman Against a Background of Wheat",
    "Portrait of Joseph Roulin",
    "Road with Cypress and Star",
    "Self Portrait 1889",
    "Self Portrait with Bandaged Ear 1889",
    "Self-Portrait with Bandaged Ear and Pipe",
    "Sunflowers",
    "The Bedroom At Arles",
    "The Church at Auvers",
    "The Langlois Bridge at Arles",
    "The Mulberry Tree in Autumn",
    "The Night Cafe.jpg",
    "The Potato Eaters",
    "The Sower",
    "The Starry Night Over The Rhone",
    "The Starry Night",
    "The Yellow House",
    "Vase with Daisies and Poppies",
    "Vase with Pink Roses",
    "Wheat Fields near Auvers",
    "Wheatfield under Thunderclouds",
    "Wheatfield with Crows",
    "Willows at Sunset",
    "Zouave"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return paintings.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Painting", for: indexPath) as! PaintingCell
        
        // Configure the cell
        
        cell.painting.image = UIImage(named: paintings[indexPath.row])
        
        return cell
    }
    
    func collectionView(_collectionView:UICollectionView, layout collectionViewLayout: UICollectionView, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        let screenSize : CGRect = UIScreen.main.bounds
        var widthCell = 0
        var heightCell = 0
        
        //iPhone SE 5
        if screenSize.width == 320 {
            
            widthCell = 90
            heightCell = 90
            
        }
        
        //iPhone 6 7 8
        if screenSize.width == 375 {
            
            widthCell = 110
            heightCell = 110
            
        }
        
        //iPhone 6+ 7+ 8+
        if screenSize.width == 414 {
            
            widthCell = 120
            heightCell = 120
        }
        
        return CGSize(width: widthCell, height: heightCell)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPainting" {
            
            if let indexPath = self.collectionView?.indexPath(for: sender as! UICollectionViewCell){
                let paintingView = segue.destination as! Painting
                
                paintingView.sentData = paintings[indexPath.row] as String
            }
        }
    }
    
}
