//
//  UserListViewController.swift
//  RandomUser
//
//  Created by BOGU$ on 02/01/2019.
//  Copyright © 2019 Technoscence. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

private let users = ["Maciej", "Piotr"]

class UserListViewController: UITableViewController {
    
    let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = nil
        tableView.dataSource = nil
        
        let usersFeed = Observable.just(users)
        usersFeed
            .bind(to: tableView.rx.items(cellIdentifier: R.reuseIdentifier.userName.identifier)) { (row, user, cell: UserTableViewCell) in
                cell.userName.text = user
            }
            .disposed(by: disposeBag)
    }

}
