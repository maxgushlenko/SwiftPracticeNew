//
//  Facade.swift
//  SwiftSandbox
//
//  Created by m4c5on on 13.06.22.
//

import Foundation

class FacadeBootcamp {
    
    init() {
        let imageDownloader = ImageDownloader()
        let imageEditor = ImageEditor()
        let imageFacade = ImageFacade(imageDownloader: imageDownloader, imageEditor: imageEditor)
        
        imageFacade.getImage { image in
            print(image)
        }
    }
    
}

typealias ImageClosure = (Image)->()

class Image {}

class ImageFacade {
    
    var imageDownloader: ImageDownloader
    var imageEditor: ImageEditor
    
    init(imageDownloader: ImageDownloader, imageEditor: ImageEditor) {
        self.imageDownloader = imageDownloader
        self.imageEditor = imageEditor
    }
    
    func getImage(completion: @escaping ImageClosure) {
        imageDownloader.downloadImage { [unowned imageEditor] image in
            imageEditor.cropp(image: image) { image in
                completion(image)
            }
            
        }
    }
    
}

class ImageDownloader {
    func downloadImage(completion: ImageClosure) {}
}

class ImageEditor {
    func cropp(image: Image, completion: ImageClosure) {}
}
