
import UIKit

class InstructionView: UIViewController
{
  
var pageIndex : Int = 0
var titleText : String = ""
var titleText1 : String = ""
var titleText2 : String = ""
var imageFile : String = ""
var logoImage : String = ""
var SliderImage : String = ""
var bgImageFile : String = ""


  override func viewDidLoad()
  {
    super.viewDidLoad()
    
   // view.backgroundColor = UIColor(patternImage: UIImage(named: imageFile)!)
      let uiimageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 393, height: 454))
      uiimageView.image = UIImage(named: bgImageFile)
      uiimageView.contentMode = .scaleToFill
      view.addSubview(uiimageView)
      
      let uiimageViewLogo = UIImageView(frame: CGRect(x: 100, y:60, width: 192, height: 25))
      uiimageViewLogo.image = UIImage(named: logoImage)
      uiimageViewLogo.contentMode = .scaleToFill
        view.addSubview(uiimageViewLogo)
      
      let uiimageViewSlider = UIImageView(frame: CGRect(x: 150, y:700, width: 100, height: 15))
      uiimageViewSlider.image = UIImage(named: SliderImage)
      uiimageViewSlider.contentMode = .scaleToFill
        view.addSubview(uiimageViewSlider)
      
      
    let uiimageView1 = UIImageView(frame: CGRect(x: 50, y: 180, width: 300, height: 254))
        uiimageView1.image = UIImage(named: imageFile)
        uiimageView1.contentMode = .scaleToFill
        view.addSubview(uiimageView1)
      
     let label = UILabel(frame: CGRect(x: 50, y: 80, width: 300, height: 50))
    label.textColor = UIColor(named: "#606185")
    label.text = titleText
    label.font = .systemFont(ofSize: 18)
    label.textAlignment = .center
    view.addSubview(label)
      
      let label1 = UILabel(frame: CGRect(x: 50, y: 470, width: 267, height: 27))
     label1.textColor = UIColor(named: "#1F2048")
     label1.text = titleText1
     label1.textAlignment = .center
     label1.font = .systemFont(ofSize: 15)
     view.addSubview(label1)
      
      let label2 = UILabel(frame: CGRect(x: 50, y:75, width: 300, height: 949))
     label2.textColor = UIColor(named: "#606185")
     label2.text = titleText2
     label2.textAlignment = .center
    label2.font = .systemFont(ofSize: 10)
     view.addSubview(label2)
    
    let button = UIButton(type: .system)
    button.frame = CGRect(x: 20, y: view.frame.height - 110, width: view.frame.width - 40, height: 50)
    button.backgroundColor = UIColor(red: 138/255.0, green: 181/255.0, blue: 91/255.0, alpha: 1)
      button.setTitle(titleText, for: UIControl.State())
    button.addTarget(self, action: #selector(Action(button:)), for: .touchUpInside)
    self.view.addSubview(button)
  }
  
  override func didReceiveMemoryWarning()
  {
    super.didReceiveMemoryWarning()
  }
    
    @objc func Action(button: UIButton)
  {
    UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 6, initialSpringVelocity: 4, options: [], animations: {
      button.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
    }, completion: nil)
    
    UIView.animate(withDuration: 0.5, delay: 0.6, usingSpringWithDamping: 2, initialSpringVelocity: 10, options: [], animations: {
        button.transform = CGAffineTransform.identity
    }, completion: nil)
  }
  
}
