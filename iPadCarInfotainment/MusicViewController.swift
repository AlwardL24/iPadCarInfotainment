//
//  MusicViewController.swift
//  iPadCarInfotainment
//
//  Created by Aydan H on 28/07/23.
//

import UIKit
import MusicKit
import StoreKit

class MusicViewController: UIViewController {

    @IBOutlet weak var volumeSlider: UISlider!
    @IBOutlet weak var songTitle: UILabel!
    @IBOutlet weak var albumArt: UIImageView!
    
    @IBOutlet weak var forwardButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var songDurationSlider: UISlider!
    @IBOutlet weak var playingNextTableView: UITableView!
    @IBOutlet weak var playPauseButton: UIButton!
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    struct Song {
        var id: String
        var name: String
        var artistName: String
        var artworkURL: String
     
        init(id: String, name: String, artistName: String, artworkURL: String) {
            self.id = id
            self.name = name
            self.artworkURL = artworkURL
            self.artistName = artistName
        }
    }
    
    var upnextSongs: [Song] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    @IBAction func volumeSliderChanged(_ sender: Any) {
        let volume = volumeSlider.value
    }
    


    @IBAction func playPauseButtonPressed(_ sender: Any) {
        
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
