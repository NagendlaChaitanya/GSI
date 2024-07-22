//
//  ViewController.swift
//  GSINEXT
//
//  Created by Venkat on 19/07/24.
//

import UIKit

class ViewController: UIViewController, UIPageViewControllerDataSource {

    var pageViewController : UIPageViewController?
    var currentIndex : Int = 0
    var pageTitles = ["Your NEXT need, our priority !", "Your NEXT need, our priority !", "Your NEXT need, our priority !"]
    var pageTitles1 = ["Your NEXT needs shipped FAST ⚡️", "Precision Route Planning", "Environmental Responsibility"]
    var pageTitles2 = ["Say goodbye to long wait times and hello to same-day deliveries.", "Our intelligent route planning software guarantees the optimal path for each delivery. ", " Our intelligent route planning software guarantees the optimal path for each delivery. "]
    var bgPageImages = ["backgroundImage", "backgroundImage", "backgroundImage"]
    var pageImages = ["page1", "page2", "page3"]
    var logoImages = ["logo", "logo", "logo"]
    var SliderImages = ["Slider", "Slider", "Slider"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
        pageViewController!.dataSource = self
        
        let startingViewController: InstructionView = viewControllerAtIndex(index: 0)!
        let viewControllers = [startingViewController]
        pageViewController!.setViewControllers(viewControllers , direction: .forward, animated: false, completion: nil)
        pageViewController!.view.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height);
        
        addChild(pageViewController!)
        view.addSubview(pageViewController!.view)
        pageViewController!.didMove(toParent: self)

    }
    
    func viewControllerAtIndex(index: Int) -> InstructionView? {
        if self.pageTitles.count == 0 || index >= self.pageTitles.count {
            return nil
        }
        // Create a new view controller and pass suitable data.
        let pageContentViewController = InstructionView()
        pageContentViewController.bgImageFile = bgPageImages[index]
        pageContentViewController.imageFile = pageImages[index]
        pageContentViewController.titleText = pageTitles[index]
        pageContentViewController.titleText1 = pageTitles1[index]
        pageContentViewController.titleText2 = pageTitles2[index]
        pageContentViewController.logoImage = logoImages[index]
        pageContentViewController.SliderImage = SliderImages[index]
        pageContentViewController.pageIndex = index
        currentIndex = index
        
        return pageContentViewController
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
      var index = (viewController as! InstructionView).pageIndex
      
      if (index == 0) || (index == NSNotFound) {
        return nil
      }
      
      index -= 1
      
      return viewControllerAtIndex(index: index)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
      var index = (viewController as! InstructionView).pageIndex
      
      if index == NSNotFound {
        return nil
      }
      
      index += 1
      
      if (index == self.pageTitles.count) {
        return nil
      }
      
      return viewControllerAtIndex(index: index)
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int{
      return self.pageTitles.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int{
      return 0
    }


}

