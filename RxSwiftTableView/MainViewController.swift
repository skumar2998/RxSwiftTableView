//
//  MainViewController.swift
//  RxSwiftTableView
//
//  Created by Kumar, Sunil on 27/05/18.
//  Copyright © 2018 AppScullery. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa


struct DateItem {
    let date : String
    let time : String
}

class MainViewController: UIViewController {
    @IBOutlet weak var mainTableView: UITableView!
    
    let datesItemArray = [
        DateItem(date: "01/06/07", time: "01:01:01"),
        DateItem(date: "02/06/07", time: "01:01:02"),
        DateItem(date: "03/06/07", time: "01:01:03"),
        DateItem(date: "04/06/07", time: "01:01:04")
    ]
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let objArray : Observable<[DateItem]> = Observable.just(datesItemArray)
        objArray.bind(to: mainTableView.rx.items(cellIdentifier: "skcell")){
            _, dateItem, cell in
            if let indi_cell = cell as? SKTableViewCell {
                indi_cell.leftLabel.text = dateItem.date
                indi_cell.rightLabel.text = dateItem.time
            }
        }.disposed(by: disposeBag)
        
        mainTableView.rx.modelSelected(DateItem.self).subscribe(onNext: {
            (dateItem) in
            print("Selected Date is \(dateItem.date) \(dateItem.time)")
        }).disposed(by: disposeBag)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

