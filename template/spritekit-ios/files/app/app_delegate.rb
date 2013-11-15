class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    scene_view = ViewController.alloc.init
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = scene_view
    @window.makeKeyAndVisible
    true
  end
end
