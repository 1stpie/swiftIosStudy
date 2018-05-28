//
//  LabelTextFieldTestController.swift
//  HelloWorld
//
//  Created by Macbook Pro on 2018. 5. 22..
//  Copyright © 2018년 Min. All rights reserved.
//

import UIKit

class LabelTextFieldTestController: UIViewController, UITextFieldDelegate, UITextViewDelegate {

    @IBOutlet weak var alignSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var lineBreakSelectBtn: UIButton!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    // MARK: - IBAction
    @IBAction func changeText(_ sender: UITextField) {
        textLabel?.text = sender.text
        textView?.text = sender.text
    }
    
    @IBAction func selectSegment(_ sender: UISegmentedControl) {
        textLabel?.textAlignment = NSTextAlignment(rawValue: sender.selectedSegmentIndex)!
        textView?.textAlignment = NSTextAlignment(rawValue: sender.selectedSegmentIndex)!
    }
    
    @IBAction func setLineBreakMode(_ sender: UIButton) {
        actionSheetPicker()
    }
    
    @IBAction func toggleHighlithed(_ sender: UIButton) {
        textLabel?.isHighlighted = !textLabel.isHighlighted
        textField?.isHighlighted = !textField.isHighlighted

        sender.setTitle(textLabel?.isHighlighted == true ? "Highlight : ON" : "Highlight : OFF", for: .normal)
    }

    // textField에 대하여 border 설정 변경
    @IBAction func fieldBorderChange(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            textField?.borderStyle = .none
        case 1:
            textField?.borderStyle = .line
        case 2:
            textField?.borderStyle = .bezel
        case 3:
            textField?.borderStyle = .roundedRect
        default:
            textField?.borderStyle = .roundedRect
        }
    }
    
    //autoshrink segmentedControl change
    @IBAction func autoShrinkChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            textLabel.adjustsFontSizeToFitWidth = false
            textLabel.minimumScaleFactor = 0
        case 1:
            textLabel.adjustsFontSizeToFitWidth = true
            textLabel.minimumScaleFactor = 0.5
        case 2:
            textLabel.adjustsFontSizeToFitWidth = true
            textLabel.minimumScaleFactor = 0
        default:
            textLabel.adjustsFontSizeToFitWidth = false
            textLabel.minimumScaleFactor = 0
        }
    }
    
    @IBAction func changeEditable(_ sender: UISwitch) {
        textView.isEditable = sender.isOn
    }
    
    @IBAction func changeSelectable(_ sender: UISwitch) {
         textView.isSelectable = sender.isOn
    }
    
    
    // MARK: - function
     // line break mode 설정에 대한 AlertAction을 만들어준다.
    private func actionSheetPicker() {
        let clippingAction = UIAlertAction(title: NSLineBreakMode.byClipping.name, style: .default, handler: {_ in
            self.lineBreakSelectBtn.setTitle(NSLineBreakMode.byClipping.name, for: .normal)
            self.textLabel?.lineBreakMode = NSLineBreakMode.byClipping})
        let charWrappingAction = UIAlertAction(title: NSLineBreakMode.byCharWrapping.name, style: .default, handler: {_ in
            self.lineBreakSelectBtn.setTitle(NSLineBreakMode.byCharWrapping.name, for: .normal)
            self.textLabel?.lineBreakMode = NSLineBreakMode.byCharWrapping})
        
        let wordWrappingAction = UIAlertAction(title: NSLineBreakMode.byWordWrapping.name, style: .default, handler: {_ in
            self.lineBreakSelectBtn.setTitle(NSLineBreakMode.byWordWrapping.name, for: .normal)
            self.textLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping})
        
        let leftTruncAction = UIAlertAction(title: NSLineBreakMode.byTruncatingHead.name, style: .default, handler: {_ in
            self.lineBreakSelectBtn.setTitle(NSLineBreakMode.byTruncatingHead.name, for: .normal)
            self.textLabel?.lineBreakMode = NSLineBreakMode.byTruncatingHead})
        
        let centerTrunAction = UIAlertAction(title: NSLineBreakMode.byTruncatingMiddle.name, style: .default, handler: {_ in
            self.lineBreakSelectBtn.setTitle(NSLineBreakMode.byTruncatingMiddle.name, for: .normal)
            self.textLabel?.lineBreakMode = NSLineBreakMode.byTruncatingMiddle})
        
        let rightTruncAction = UIAlertAction(title: NSLineBreakMode.byTruncatingTail.name, style: .default, handler: {_ in
            self.lineBreakSelectBtn.setTitle(NSLineBreakMode.byTruncatingTail.name, for: .normal)
            self.textLabel?.lineBreakMode = NSLineBreakMode.byTruncatingTail})
        
        let alert = UIAlertController(title: nil, message: "LineBreakMode를 선택하세요.", preferredStyle: .actionSheet)
        
        alert.addAction(clippingAction)
        alert.addAction(charWrappingAction)
        alert.addAction(wordWrappingAction)
        alert.addAction(leftTruncAction)
        alert.addAction(centerTrunAction)
        alert.addAction(rightTruncAction)

        self.present(alert, animated: true, completion: nil)
    }
}
