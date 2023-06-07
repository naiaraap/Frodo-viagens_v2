//
//  ViewController.swift
//  FrodoViagens
//
//  Created by Naiara de Almeida Pantuza on 29/05/23.
//

import UIKit

class ViewController: UIViewController {
  
  //MARK: - IBOutlets
  @IBOutlet weak var travelsTableView: UITableView!
  
  //MARK - Lyfecycle
  override func viewDidLoad() {
    setTableView()
    view.backgroundColor = UIColor(red: 30.0/255.0, green: 59.0/255.0, blue: 119.0/255.0, alpha: 1.0)
  }
  
  //MARK: - Private Methods
  //MARK: method for SET TableView
  func setTableView() {
    travelsTableView.register(UINib(nibName: "TripTableViewCell", bundle: nil), forCellReuseIdentifier: "TripTableViewCell")
    super.viewDidLoad()
    travelsTableView.dataSource = self
    travelsTableView.delegate = self
  }
}

extension ViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return tripsSection?[section].numberOfTripsOrRows ?? 0
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let tripCell = tableView.dequeueReusableCell(withIdentifier: "TripTableViewCell", for: indexPath) as? TripTableViewCell else {
      fatalError("error to create TripTableViewCell")
    }
    return tripCell
    
    //let viewModel = tripsSection?[indexPath.section]
    
    //    switch viewModel?.tripType {
    //    case .highlights:
    //        tripCell.setCell(viewModel?.trips[indexPath.row])
    //        return tripCell
    //    default:
    //      return UITableViewCell()
    //    }
  }
}

extension ViewController: UITableViewDelegate {
  
  func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self, options: nil)?.first as? HomeTableViewHeader
    headerView?.setView()
    
    return headerView
  }
  
  func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    return 300
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 400
  }
}

