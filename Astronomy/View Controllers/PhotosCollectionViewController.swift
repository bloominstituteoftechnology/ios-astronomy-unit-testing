//
//  PhotosCollectionViewController.swift
//  Astronomy
//
//  Created by Andrew R Madsen on 9/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PhotosCollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate {
    
    var cache = Cache<String, Data>()
    private var photoFetchQueue = OperationQueue()
    var storedFetchOperations = [Int:FetchPhotoOperation]()
    private let client = MarsRoverClient()
    private var roverInfo: MarsRover? {
        didSet {
            solDescription = roverInfo?.solDescriptions[3]
        }
    }
    private var solDescription: SolDescription? {
        didSet {
            if let rover = roverInfo,
                let sol = solDescription?.sol {
                client.fetchPhotos(from: rover, onSol: sol) { (photoRefs, error) in
                    if let e = error { NSLog("Error fetching photos for \(rover.name) on sol \(sol): \(e)"); return }
                    self.photoReferences = photoRefs ?? []
                }
            }
        }
    }
    private var photoReferences = [MarsPhotoReference]() {
        didSet {
            DispatchQueue.main.async { self.collectionView?.reloadData() }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        client.fetchMarsRover(named: "curiosity") { (rover, error) in
            if let error = error {
                NSLog("Error fetching info for curiosity: \(error)")
                return
            }
            
            self.roverInfo = rover
        }
    }
    
    // UICollectionViewDataSource/Delegate
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoReferences.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCell", for: indexPath) as? ImageCollectionViewCell ?? ImageCollectionViewCell()
        
        loadImage(forCell: cell, forItemAt: indexPath)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        let photoReference = photoReferences[indexPath.item]
        let operation = storedFetchOperations[photoReference.id]
        operation?.cancel()
    }
    
    // Make collection view cells fill as much available width as possible
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let flowLayout = collectionViewLayout as! UICollectionViewFlowLayout
        var totalUsableWidth = collectionView.frame.width
        let inset = self.collectionView(collectionView, layout: collectionViewLayout, insetForSectionAt: indexPath.section)
        totalUsableWidth -= inset.left + inset.right
        
        let minWidth: CGFloat = 150.0
        let numberOfItemsInOneRow = Int(totalUsableWidth / minWidth)
        totalUsableWidth -= CGFloat(numberOfItemsInOneRow - 1) * flowLayout.minimumInteritemSpacing
        let width = totalUsableWidth / CGFloat(numberOfItemsInOneRow)
        return CGSize(width: width, height: width)
    }
    
    // Add margins to the left and right side
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10.0, bottom: 0, right: 10.0)
    }
    
    // MARK: - Private
    
    private func loadImage(forCell cell: ImageCollectionViewCell, forItemAt indexPath: IndexPath) {
        let photoReference = photoReferences[indexPath.item]
        guard let imageURl = photoReference.imageURL.usingHTTPS else {return}
        if let cachedImage = cache.value(for: imageURl.absoluteString)  {
            cell.imageView.image = UIImage(data: cachedImage)
        }
        let fetchImageOperation = FetchPhotoOperation(marsPhotoReference: photoReference)
        
        let receivedDataInCache = BlockOperation {
            guard let receivedImageData = fetchImageOperation.imageData, let photoURLString = photoReference.imageURL.usingHTTPS else {return}
            self.cache.cache(value: receivedImageData, for: photoURLString.absoluteString)
        }
        
        let getImage = BlockOperation {
            defer{self.storedFetchOperations.removeValue(forKey: photoReference.id)}
            if let currentIndexPath = self.collectionView?.indexPath(for: cell),
                currentIndexPath != indexPath {
                print("Got image for now-reused cell")
                return // Cell has been reused
            }
            guard let imageData = fetchImageOperation.imageData else {return}
                cell.imageView.image = UIImage(data: imageData)
            }
        
        receivedDataInCache.addDependency(fetchImageOperation)
        //previously relied on cache
        getImage.addDependency(fetchImageOperation)
        photoFetchQueue.addOperation(fetchImageOperation)
        photoFetchQueue.addOperation(receivedDataInCache)
        OperationQueue.main.addOperation(getImage)
        storedFetchOperations[photoReference.id] = fetchImageOperation
        }
    
    
        // Properties
        
    
        
        @IBOutlet var collectionView: UICollectionView!
}


//        let photoReference = photoReferences[indexPath.item]
//        if let cachedImageData = cache.value(for: photoReference.imageURL.usingHTTPS!.absoluteString){
//            cell.imageView.image = UIImage(data: cachedImageData)
//        } else {
//            guard let imageURL = photoReference.imageURL.usingHTTPS else {return}
//            URLSession.shared.dataTask(with: imageURL) { (data, _, error) in
//                var cellIndexPath: IndexPath?
//                DispatchQueue.main.async {
//                    cellIndexPath = self.collectionView.indexPath(for: cell)
//                }
//                if let collectionViewIndexPath = cellIndexPath {
//                    if collectionViewIndexPath != indexPath {
//                        return
//                    }
//                }
//                if let error = error {
//                    NSLog("error fetching image: \(error)")
//                    return
//                }
//                guard let data = data else {return}
//                DispatchQueue.main.async {
//                        self.cache.cache(value: data, for: photoReference.imageURL.usingHTTPS!.absoluteString)
//                        let receivedImage = UIImage(data: data)
//                        cell.imageView.image = receivedImage
//                    }
//
//                }.resume()
//        }
