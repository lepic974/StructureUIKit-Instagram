//
//  StorageManager.swift
//  StructureApp
//
//  Created by Joh_Macbook on 26/07/2021.
//

import FirebaseStorage

public class StorageManager {
    
    static let shared = StorageManager()
    private let bucket = Storage.storage().reference()
    
    public enum IGStorageManagerError: Error {
        case failedToDownload
    }
    
    // MARK: - Public
    
    public func uploadUserPost(model: UserPost, completion: (Result<URL, Error>) -> Void) {
        
    }
    
    public func downloadImage(with reference: String, completion: @escaping (Result<URL, IGStorageManagerError>) -> Void) {
        bucket.child(reference).downloadURL(completion: { url, error in
            guard let url = url, error == nil else {
                completion(.failure(.failedToDownload))
                return
            }
            
            completion(.success(url))
        })
    }
}

//public enum UserPostType {
//    case photo, video
//}
//
//public struct UserPost {
//    let identifier: String
//    let postType: UserPostType
//    let thumbnailImage: URL
//    let postURL: URL
//    let caption: String?
//    let likeCount: [PostLikes]
//    let comments: [PostComment]
//    let createDate: Date
//}
//
//struct PostLikes {
//    let username: String
//    let postIdentifier: String
//}
//
//struct CommentLike {
//    let username: String
//    let commentIdentifier: String
//}
//
//struct PostComment {
//    let identifier: String
//    let username: String
//    let text: String
//    let createDate: Date
//    let likes: [CommentLike]
//}
