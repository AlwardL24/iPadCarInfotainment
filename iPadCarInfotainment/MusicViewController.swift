//
//  MusicViewController.swift
//  iPadCarInfotainment
//
//  Created by Aydan H on 28/07/23.
//

import UIKit
import MusicKit
import MusadoraKit

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
