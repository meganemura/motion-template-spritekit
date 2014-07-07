class MyScene < SKScene
  def initWithSize(size)
    super

    self.backgroundColor = NSColor.grayColor
    my_label = SKLabelNode.labelNodeWithFontNamed("Chalkduster")
    my_label.text = "Hello, World!"
    my_label.fontSize = 30
    my_label.position = CGPointMake(CGRectGetMidX(self.frame),
                                    CGRectGetMidY(self.frame))
    self.addChild(my_label)
    self
  end

  def mouseDown(theEvent)
     # Called when a mouse click occurs
    location = theEvent.locationInNode(self)

    # build a sprite for the scene
    sprite = SKSpriteNode.spriteNodeWithImageNamed("Spaceship")
    sprite.position = location
    sprite.scale = 0.3

    # rotate the sprite a small amount
    action = SKAction.rotateByAngle(Math::PI, duration:0.5)

    # repeat this action forever
    sprite.runAction(SKAction.repeatActionForever(action))

    # add the sprite to the scene
    self.addChild(sprite)
  end

  def update(current_time)
    # Called before each frame is rendered
  end
end