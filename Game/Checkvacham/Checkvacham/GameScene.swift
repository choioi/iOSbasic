//
//  GameScene.swift
//  Checkvacham
//
//  Created by phung on 7/5/16.
//  Copyright (c) 2016 phung. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    let player = SKSpriteNode(imageNamed: "zombie1")
    let enemy = SKSpriteNode(imageNamed: "enemy")
    let hinhtron = SKShapeNode(circleOfRadius: 100)
    let background = SKSpriteNode(imageNamed: "background1")
    
    let hinhtron_tren_background = SKShapeNode(circleOfRadius: 200)

    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        player.position = CGPoint(x:400,y:400)
        player.setScale(0.2)
        player.name = "a"
        
        addChild(player)
        
        enemy.position = CGPoint(x:800,y:400)
        enemy.setScale(0.2)
        enemy.name = "b"
        addChild(enemy)
        
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        background.zPosition = -1 //background nên set -1 để khỏi che các node mặc định là 0
        addChild(background)
        
        hinhtron.position = CGPoint(x:800,y:400)
        hinhtron.strokeColor = UIColor.yellowColor()
        hinhtron.name = "c"
        addChild(hinhtron)

        hinhtron_tren_background.position = CGPoint(x:800,y:400)
        hinhtron_tren_background.strokeColor = UIColor.redColor()
        hinhtron_tren_background.name = "d"
        //hinhtron_tren_background.zPosition = 2
        addChild(hinhtron_tren_background)
        
        
        enemyrun()
        hinhtronvangrun()
        hinhtrondorun()
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
//        for touch in touches {
//            let location = touch.locationInNode(self)
//            
//                    }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        checkvachamenemy()
        checkvachamhinhtronvang()
        checkvachamhinhtrondo()
    }
    
    func enemyrun(){
        let dichuyen = SKAction.moveToX(-20, duration: 10)
        enemy.runAction(dichuyen)
    }
    
    
    func hinhtronvangrun(){
        let dichuyen = SKAction.moveToX(-20, duration: 10)
        hinhtron_tren_background.runAction(dichuyen)
    }
    
    
    func hinhtrondorun(){
        let dichuyen = SKAction.moveToX(-20, duration: 10)
        hinhtron.runAction(dichuyen)
    }
    
    
    
    
    func checkvachamenemy(){
        
        enumerateChildNodesWithName("b") { node, _ in
        let quaivat = node as! SKSpriteNode
            if CGRectIntersectsRect(quaivat.frame, self.player.frame) {
            print("da cham ba gia")
            
            }
        }
    }
    
    func checkvachamhinhtronvang(){
            enumerateChildNodesWithName("c") { node, _ in
            let quaivat = node as! SKShapeNode
            if CGRectIntersectsRect(quaivat.frame, self.player.frame) {
            print("da cham hinh tron vang")
        
            }
        }

    }
    
    func checkvachamhinhtrondo(){
        enumerateChildNodesWithName("d") { node, _ in
            let quaivat = node as! SKShapeNode
            if CGRectIntersectsRect(quaivat.frame, self.player.frame) {
                print("da cham hinh tron do")
                
            }
        }
        
    }

    
    
}
