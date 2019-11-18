//
//  LibraryAPI.swift
//  RWBlueLibrary
//
//  Created by watchingcarsgoby on 16.11.2019.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//

import Foundation

final class LibraryAPI {
  // Singletorn implemented below
  static let shared = LibraryAPI() // gives access to the singleton obj
  private init() { // prevent to create new instances of the singleton
    
  }
  
  // Facade implemented below (now PersistencyManager and HTTPClient are hidden from the rest of the app)
  private let persistencyManager = PersistencyManager()
  private let httpClient = HTTPClient()
  private let isOnline = false
  
  // API Implemented via facaded instances of PersistencyManager and HTTPClient
  func getAlbums() -> [Album] {
    return persistencyManager.getAlbums()
  }
  
  func addAlbum(_ album: Album, at index: Int) {
    persistencyManager.addAlbum(album, at: index) // firstly the data is added locally to the private instance of PersistencyManager
    if isOnline {
      httpClient.postRequest("/api/addAlbum", body: album.description) // then, if the server is online, the data is added to the remote server via API
    }
  }
  
  func deleteAlbum(at index: Int) {
    persistencyManager.deleteAlbum(at: index)
    if isOnline {
      httpClient.postRequest("api/deleteAlbum", body: "\(index)")
    }
  }
}
