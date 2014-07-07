class AppDelegate
  def applicationDidFinishLaunching(notification)
    buildMenu
    buildWindow
  end

  def buildWindow
    @mainWindow = NSWindow.alloc.initWithContentRect([[240, 180], [480, 360]],
      styleMask: NSTitledWindowMask|NSClosableWindowMask|NSMiniaturizableWindowMask|NSResizableWindowMask,
      backing: NSBackingStoreBuffered,
      defer: false)
    @mainWindow.title = NSBundle.mainBundle.infoDictionary['CFBundleName']
    @mainWindow.orderFrontRegardless

    # Pick a size for the scene
    scene = MyScene.sceneWithSize(@mainWindow.frame.size)
    # Set the scale mode to scale to fit the window
    scene.scaleMode = SKSceneScaleModeAspectFit

    # create a view to sit the scene in
    view = SKView.alloc.initWithFrame(@mainWindow.frame)
    view.presentScene(scene)
    view.showsFPS = true
    view.showsNodeCount = true

    @mainWindow.setContentView(view)
  end

  def applicationShouldTerminateAfterLastWindowClosed(sender)
    true
  end
end
