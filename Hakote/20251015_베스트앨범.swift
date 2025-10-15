import Foundation

struct Song {
    let id: Int
    let genre: String
    let plays: Int
}

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    let songs = zip(genres.indices, zip(genres, plays)).map { index, info in
        Song(id: index, genre: info.0, plays: info.1)
    }
    
    var genreTotalPlays: [String: Int] = [:]
    for song in songs {
        genreTotalPlays[song.genre, default: 0] += song.plays
    }
    
    var genreSongs: [String: [Song]] = [:]
    for song in songs {
        genreSongs[song.genre, default: []].append(song)
    }
    
    for genre in genreSongs.keys {
        genreSongs[genre]?.sort { song1, song2 in
            if song1.plays == song2.plays {
                return song1.id < song2.id
            }
            return song1.plays > song2.plays
        }
    }
    
    let sortedGenres = genreTotalPlays.keys.sorted { genre1, genre2 in
        genreTotalPlays[genre1]! > genreTotalPlays[genre2]!
    }
    
    var result: [Int] = []
    for genre in sortedGenres {
        if let songs = genreSongs[genre] {
            let count = min(songs.count, 2)
            for i in 0..<count {
                result.append(songs[i].id)
            }
        }
    }
    
    return result
}
