//
//  PersistencyManagement.swift
//  RWBlueLibrary
//
//  Created by watchingcarsgoby on 16.11.2019.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//

import Foundation

final class PersistencyManager {
  
  private var albums = [Album]()
  
  init() {
    let album1 = Album(title: "Shed Blood", artist: "Ada Rook", genre: "Concrete", coverUrl: "https://f4.bcbits.com/img/a0047201740_10.jpg", year: "2018")
    let album2 = Album(title: "Stratus", artist: "SVLBRD", genre: "Ambient", coverUrl: "https://f4.bcbits.com/img/a1297467431_10.jpg", year: "2018")
    let album3 = Album(title: "Resonance Of The Absolute", artist: "Arcaere", genre: "Dub Techno", coverUrl: "https://f4.bcbits.com/img/a1517020602_10.jpg", year: "2019")
    let album4 = Album(title: "North Paths", artist: "Mykja", genre: "Drone", coverUrl: "https://f4.bcbits.com/img/a4265783274_10.jpg", year: "2017")
    let album5 = Album(title: "Pareidolia", artist: "Powlos", genre: "2018", coverUrl: "https://f4.bcbits.com/img/a3998797530_10.jpg", year: "2018")
    
    albums = [album1, album2, album3, album4, album5]
  }
  
  func getAlbums() -> [Album] {
    return albums
  }
  
  func addAlbum(_ album: Album, at index: Int) {
    if albums.count >= index {
      albums.insert(album, at: index)
    } else {
      albums.append(album)
    }
  }
  
  func deleteAlbum(at index: Int) {
    albums.remove(at: index)
  }
}
