class MyScene < SKScene
  def initWithSize(size)
    super

    self.backgroundColor = SKColor.colorWithRed(0.15, green: 0.15, blue: 0.3, alpha: 1.0)
    my_label = SKLabelNode.labelNodeWithFontNamed("Chalkduster")
    my_label.text = "Hello, World!"
    my_label.fontSize = 30
    my_label.position = CGPointMake(CGRectGetMidX(self.frame),
                                    CGRectGetMidY(self.frame))
    self.addChild(my_label)
    self
  end

  def touchesBegan(touches, withEvent: event)
    touches.each do |touch|
      location = touch.locationInNode(self)
      sprite = SKSpriteNode.spriteNodeWithImageNamed("Spaceship")
      sprite.position = location
      action = SKAction.rotateByAngle(Math::PI, duration: 1)
      sprite.runAction(SKAction.repeatActionForever(action))
      self.addChild(sprite)
    end
  end

  def update(current_time)
    # Called before each frame is rendered
  end
end
