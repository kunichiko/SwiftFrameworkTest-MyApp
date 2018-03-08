//
//  ViewController.swift
//  MyApp
//
//  Created by Kunihiko Ohnaka on 2018/03/08.
//

import UIKit

import RxSwift
import MyFramework

class ViewController: UIViewController {

    private var disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()


        let observable1 = Observable<String>.just("test1")

        let observable2 = MyFrameworkClass().function1()

        observable1.subscribe(onNext: { (str) in
            print("observable1 = \(str)")
        }).disposed(by: disposeBag)

        observable2.subscribe(onNext: { (str) in
            print("observable2 = \(str)")
        }).disposed(by: disposeBag)
    }

}

