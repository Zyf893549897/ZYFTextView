//
//  ViewController.swift
//  ZYFTextView
//
//  Created by zhangyunfei on 01/06/2023.
//  Copyright (c) 2023 zhangyunfei. All rights reserved.
//

import UIKit
import ZYFTextView
import SnapKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(textV)
        textV.snp.makeConstraints { make in
            make.left.equalTo(40)
            make.top.equalTo(300)
            make.width.equalTo(200)
            make.height.greaterThanOrEqualTo(100)
        }
    }
    lazy var textV: ZYFPlaceholderTextView={
        let view = ZYFPlaceholderTextView.init()
        view.textView.isScrollEnabled = false
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.red.cgColor
        view.maxLength = 1000
        view.showFootNumber=true
        view.placeholder = "请输入"
        view.textView.font = UIFont.systemFont(ofSize: 14)
        view.placeholderFont = UIFont.systemFont(ofSize: 14)
        view.addTextDidChangeHandler { str in
            print("=====\(str ?? "")")
        }
        view.addTextLengthDidMaxHandler { str in
            print("======max======")
        }
        return view
    }()
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

