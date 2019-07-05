//
//  GalleryWriter.swift
//  W6D4-Metro
//
//  Created by Massimo Savino on 2019-07-05.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

import Foundation

class GalleryWriter {
    
    // This helper class serves to write user default DB info on the device, after the Gallery has its properties set. It only has the one method.
    
    func save(gallery: Data, with defaults: UserDefaultsProtocol) {
        defaults.set(gallery, forKey: "galleryKey")
    }
}
