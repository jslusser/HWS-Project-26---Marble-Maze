//
//  GameScene.swift
//  Project26
//
//  Created by James Slusser on 7/18/17.
//  Copyright © 2017 James Slusser. All rights reserved.
//  https://www.hackingwithswift.com/read/26/overview
//

import SpriteKit


class GameScene: SKScene {
    
    
    override func didMove(to view: SKView) {
        
          }
    
    
      func loadLevel() {
        if let levelPath = Bundle.main.path(forResource: "level1", ofType: "txt") {
            if let levelString = try? String(contentsOfFile: levelPath) {
                let lines = levelString.components(separatedBy: "\n")
                
                for (row, line) in lines.reversed().enumerated() {
                    for (column, letter) in line.characters.enumerated() {
                        let position = CGPoint(x: (64 * column) + 32, y: (64 * row) + 32)
                        
                        if letter == "x" {
                            // load wall
                        } else if letter == "v"  {
                            // load vortex
                        } else if letter == "s"  {
                            // load star
                        } else if letter == "f"  {
                            // load finish
                        }
                    }
                }
            }
        }
    }

}
