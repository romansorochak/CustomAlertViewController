# CustomAlertViewController
- this project contains sample with alert view controller which is flexible and expansible
- you can present alert view controller 
  1 - via code
    1 - instantiate alert view controller by calling - 
      AlertViewController.createAlertViewController()
    2 - set appropriate data like - 
        alertVC.handlerOkClicked = {
            println("aklsdhg")
        }
    3 - show it by calling -  
      AlertViewController.presentAlertViewController(alertVC, fromViewController: self)
  2 - via storyboard by setting 
    1 - segue - present modally
    2 - segue - presentetion Over Current Context
