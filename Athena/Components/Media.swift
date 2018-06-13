//
//  Media.swift
//  Athena
//
//  Created by Cray Jaeger on 6/12/18.
//  Copyright © 2018 Cray Jaeger. All rights reserved.
//

import Foundation
import FirebaseStorage

public struct Media {
    public enum MediaType {
        case image
        case video
    }
    
    let mediaId: String
    let path: String
    let mediaType: MediaType
    var isDeleted: Bool = false
    let created: Date
    
    public static func mediaId(media: Media) -> String {
        return media.mediaId
    }
    
    public static func path(media: Media) -> String {
        return media.path
    }
    
    public static func type(media: Media) -> MediaType {
        return media.mediaType
    }
    
    public static func isDeleted(media: Media) -> Bool {
        return media.isDeleted
    }
    
    public static func created(media: Media) -> Date {
        return media.created
    }
    
    public func uploadImageToFirebaseStorage(data: NSData)
    {
        let storageRef = Storage.storage().reference(withPath: "myPictures/testPicture.jpg")
        let uploadMetadata = StorageMetadata()
        uploadMetadata.contentType = "image/jpeg"
        let uploadTask = storageRef.putData(data as Data, metadata: uploadMetadata) { (metadata, error) in
            if (error != nil) {
                print("I received an error! \(String(describing: error?.localizedDescription))")
            } else {
                print("Upload complete! Here is some metadata! \(String(describing: metadata))")
            }
        }
        // Update progress bar
        uploadTask.observe(.progress) { (snapshot) in
            guard let progress = snapshot.progress else { return }
            //self.progressView.progress = Float(progress.fractionCompleted)
        }
    }
    
    public func uploadVideoToFirebaseStorage(url: NSURL) {
        let storageRef = Storage.storage().reference(withPath: "myVideos/testMovie.mov")
        let uploadMetadata = StorageMetadata()
        uploadMetadata.contentType = "video/quicktime"
        let uploadTask = storageRef.putFile(from: url as URL, metadata: uploadMetadata) { (metadata, error) in
            if (error != nil) {
                print("I received an error! \(String(describing: error?.localizedDescription))")
            } else {
                print("Upload complete! Here is some metadata! \(String(describing: metadata))")
            }
        }
        uploadTask.observe(.progress) {(snapshot) in
            guard let progress = snapshot.progress else { return }
            //self.progressView.progress = Float(progress.fractionCompleted)
        }
    }
}




