//
//  ViewController.swift
//  DataTrasnferExample
//
//  Created by giftbot on 03/10/2018.
//  Copyright © 2018 giftbot. All rights reserved.
//

import UIKit


final class EntryViewController: UIViewController {

    
    
  private struct Route {
    static let actionSegue = "ActionSegue"
    static let manualSegue = "ManualSegue"
  }
  
    /* UserDefaults 사용하여 데이터 전달하기 위한 변수 선언 */
    let userdefault = UserDefaults.standard
    
//    var delegate: UITextFieldDelegate?
    
    
  @IBOutlet private weak var displayLabel: UILabel!
  @IBOutlet private weak var textField: UITextField!
  
  
  // MARK: Life Cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
//    textField.delegate = self
  }
  
  // MARK: Segue Common Method
  
  override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
    super.shouldPerformSegue(withIdentifier: identifier, sender: sender)
    
    return true
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    super.prepare(for: segue, sender: sender)
    guard let id = segue.identifier else { return }
    
    if id == Route.actionSegue {
        
    } else {
//      // do something else
    }
    
    guard let nextVC = segue.destination as? NextViewController else { return }
//    nextVC.displayText = textField.text ?? ""
    
    /* Userdefault 사용해서 데이터 값 넘기기 !
     prepare if문 안에서는 실행이 되지 않는다.. why?? */
    userdefault.set(displayLabel.text, forKey: "set")
   nextVC.displayText = userdefault.object(forKey: "set") as! String
    print("UserDefault \(nextVC.displayText)")
  }
  
  // MARK: Manual Segue

  @IBAction private func showNextViewControllerByManualSegue(_ sender: UIButton) {
    guard shouldPerformSegue(withIdentifier: Route.manualSegue, sender: sender) else { return }
    performSegue(withIdentifier: Route.manualSegue, sender: sender)
  }
  
  // MARK: Present
  
  @IBAction private func showNextViewControllerByPresent(_ sender: UIButton) {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let vc = storyboard.instantiateViewController(withIdentifier: "NextViewController")
    guard let nextVC = vc as? NextViewController else { return }
//    nextVC.displayText = textField.text ?? ""
    
    
    /* StaticClass 따로 생성 후 실행 */
    let actionStatic = PracticeStatic.doStatic
    actionStatic.staticText = textField.text ?? ""
    nextVC.displayText = actionStatic.staticText
    
    print("Static \(actionStatic.staticText)")
    present(nextVC, animated: true)
    
    }
    
  // MARK: Unwind
  
  @IBAction func unwindToEntryViewController(_ sender: UIStoryboardSegue) {}
}



 //MARK: - TextField 이벤트 : 1) UIControl 을 이용한 방식

extension EntryViewController {
  @IBAction private func textFieldEditingDidBegin(_ sender: Any) {
    displayLabel.textColor = .blue
  }

  @IBAction private func textFieldEditingChanged(_ sender: UITextField) {
    displayLabel.text = sender.text
  }

  @IBAction private func textFieldEditingDidEnd(_ sender: Any) {
    displayLabel.textColor = .black
  }

  @IBAction private func textFieldDidEndOnExit(_ sender: Any) {
  }
}



// MARK: - TextField 이벤트 : 2) UITextFieldDelegate 를 이용한 방식

//extension EntryViewController: UITextFieldDelegate {
//  func textFieldDidBeginEditing(_ textField: UITextField) {
//    displayLabel.textColor = .blue
//  }
//
//  func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//    displayLabel.text = (textField.text ?? "") + string
//    return true
//  }
//
//  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//    textField.resignFirstResponder()
//    return true
//  }
//
//  func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason) {
//    displayLabel.text = textField.text ?? ""
//    displayLabel.textColor = .black
//  }
//}


