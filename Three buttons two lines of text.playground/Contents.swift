
// Created on: Sept-2018
// Created by: fawaz mezher
// Created for: ICS3U
// This program is the UIKit solution for the Hello, World! program
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let MTHS : UIButton = UIButton()
    let LDH : UIButton = UIButton()
    let StMarks : UIButton = UIButton()
    let line1 : UILabel = UILabel()
    let line2 : UILabel = UILabel()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.341176480054855, green: 0.623529434204102, blue: 0.168627455830574, alpha: 1.0)
        self.view = view
        
        MTHS.setTitle("MTHS", for: UIControlState.normal)
        MTHS.setTitleColor(.blue, for: .normal)
        MTHS.addTarget(self, action: #selector(MT), for: .touchUpInside)
        view.addSubview(MTHS)
        MTHS.translatesAutoresizingMaskIntoConstraints = false
        MTHS.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        MTHS.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        
        LDH.setTitle("toronto basketball ", for: UIControlState.normal)
        LDH.setTitleColor(.blue, for: .normal)
        LDH.addTarget(self, action: #selector(LD), for: .touchUpInside)
        view.addSubview(LDH)
        LDH.translatesAutoresizingMaskIntoConstraints = false
        LDH.centerXAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        LDH.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        
        StMarks.setTitle("ottawa senators ", for: UIControlState.normal)
        StMarks.setTitleColor(.blue, for: .normal)
        StMarks.addTarget(self, action: #selector(St), for: .touchUpInside)
        view.addSubview(StMarks)
        StMarks.translatesAutoresizingMaskIntoConstraints = false
        StMarks.centerXAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        StMarks.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        
        self.view = view
        
        // line 1
        line1.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(line1)
        line1.translatesAutoresizingMaskIntoConstraints = false
        line1.topAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        line1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        // line 2
        line2.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(line2)
        line2.translatesAutoresizingMaskIntoConstraints = false
        line2.topAnchor.constraint(equalTo: view.centerYAnchor, constant:20).isActive = true
        line2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc func MT() {
        line1.text = "St Mother Teresa Catholic High School"
        line2.text = "titans"
    }
    @objc func LD() {
        line1.text = "Toronto basketball team"
        line2.text = "raptors "
    }
    @objc func St() {
        line1.text = ""
        line2.text = "Lions"
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
