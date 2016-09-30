//
//  MusicListVC.swift
//  SwapingScreens
//
//  Created by Rong Hui Lu on 2016-09-30.
//  Copyright © 2016 Rong Hui Lu. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
    }
    
    
    @IBAction func backBtnPressed(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func load3rdScreenPressed(_ sender: AnyObject) {
        let songTitle = "Quit my head"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            if let song = sender as? String{
                destination.selectedSong = song
            }
    }

}
}
