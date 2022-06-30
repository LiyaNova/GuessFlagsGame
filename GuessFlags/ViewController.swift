//
//  ViewController.swift
//  GuessFlags
//
//  Created by Юлия Филимонова on 18.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!

    private var score = 0
    private var correctAnswer = 0
    private var countries: [Country] = Country.makeCountryArray()

    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
        setFlags()
    }

    private func setView() {
        view.backgroundColor = .systemGray4
        navigationController?.navigationBar.scrollEdgeAppearance =  navigationController?.navigationBar.standardAppearance
    }

    private func setFlags(action: UIAlertAction! = nil) {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)

        buttonOne.setImage(UIImage(named: countries[0].name), for: .normal)
        buttonOne.imageView?.layer.borderWidth = 1
        buttonTwo.setImage(UIImage(named: countries[1].name), for: .normal)
        buttonTwo.imageView?.layer.borderWidth = 1
        buttonThree.setImage(UIImage(named: countries[2].name), for: .normal)
        buttonThree.imageView?.layer.borderWidth = 1

        title = countries[correctAnswer].name.uppercased()
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        var title: String
        
        if sender.tag == correctAnswer {
            title = "Correct!"
            score += 1
        } else {
            title = "Wrong!"
            score -= 1
        }

        scoreLabel.text = String(score)

        let alert = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Continue", style: .cancel, handler: setFlags))
        present(alert, animated: true)
    }

}
