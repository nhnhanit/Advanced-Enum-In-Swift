//
//  ViewController.swift
//  Advanced-Enum-In-Swift
//
//  Created by HongNhan on 11/26/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var hearNumberLabel: UILabel!
    var player: Player = Player.dead
    
    var hearNumber: Int = 0 {
        didSet {
            hearNumberLabel.text = "Heart: \(hearNumber)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //MARK: - Document:
        // https://viblo.asia/p/advanced-enum-in-swift-maGK7b2B5j2
    }
    
    @IBAction func runButtonDidTap(_ sender: Any) {
        
        self.propertyAndMethod()
        
        self.containingEnum()
        
        self.mutatingMethod()
        
        self.customInit()
        
        self.staticMethod()
        
        self.extensionEnum()
        
        self.genericEnum()
    }
    
    @IBAction func inscreaseHeartButtonDidTap(_ sender: Any) {
        player.increaseHeart()
        hearNumber = player.numberOfHearts
    }
    
    @IBAction func getAttackedHeartButtonDidTap(_ sender: Any) {
        player.getAttacked()
        hearNumber = player.numberOfHearts
    }
}

// MARK: - Understand Enums
extension ViewController {
    
    //MARK: - Properties & Methods & Nested Enum
    fileprivate func propertyAndMethod() {
        let device = Device.MacBook

        print(device.year)
        print("\(device.introduced())")

        let dog = Animal.Dog.chihuahua
        print("\(dog)")
    }
    
    //MARK: - Containing Enum
    fileprivate func containingEnum() {
        let character = Character(type: .warrior, weapon: .sword)
        print("\(character.type) chosen \(character.weapon)")
        //warrior chosen sword

        let ch2 = Character(type: .thief, weapon: .gun)
        print("\(ch2.type) chosen \(ch2.weapon)")
    }
    
    //MARK: - Mutating Method Enum
    fileprivate func mutatingMethod() {
        var fanSpeed = FanSpeedSwitch.high
        fanSpeed.next() // fanSpeed is now equal to .low
        print(fanSpeed)

        fanSpeed.next() // fanSpeed is now equal to .high
        print(fanSpeed)

        fanSpeed.next() // fanSpeed is now equal to .off again
        print(fanSpeed)
    }
    
    //MARK: - Static Method Enum
    fileprivate func staticMethod() {
        if let device = Device.getDevice(name: "iPhone") {
            print(device)
            //prints iPhone
        }

        if let device = Device.getDevice(name: "undefine name") {
            print(device)
            //print is not called
        }
        
    }
    
    //MARK: - Custom Init
    fileprivate func customInit() {
        let intCategory = IntCategory(number: 123)
        print(intCategory)
        //prints medium
    }
    
    //MARK: - Extensions Enum
    fileprivate func extensionEnum() {
        var animal = Animal.fourLegs
        print(animal.description)
        //"Động vật 4 chân"
        animal.swapAnimal()
        print(animal.description)
        //"Động vật 2 chân"
    }
    
    //MARK: - Generic Enum
    fileprivate func genericEnum() {
        //let info = Information.name("Bob") // Error
        
        // let info = Information<String, Int>.age(20)
        //print(info) //prints age(20)
        let info = Information<String, Int>.name("Bod")
        print(info) //prints name("Bod")
    }
    
}

