//
//  TaskListViewController.swift
//  GoodList
//
//  Created by Ezequiel Parada Beltran on 03/12/2020.
//

import UIKit
import RxSwift

class TaskListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private let disposeBag = DisposeBag()
    @IBOutlet weak var proritySegmentedControl: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskTableViewCell", for: indexPath)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navC = segue.destination as? UINavigationController,
              let addTVC = navC.viewControllers.first as? AddTaskViewController else {
            fatalError("Controller not found...")
        }
        
        addTVC.taskSubjectObservable
            .subscribe(onNext: { task in
                print(task)
            }).disposed(by: disposeBag)
    }
    
}
