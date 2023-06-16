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
    travelsTableView.register(UINib(nibName: "OffersTableViewCell", bundle: nil), forCellReuseIdentifier: "OffersTableViewCell")
    super.viewDidLoad()
    travelsTableView.dataSource = self
    travelsTableView.delegate = self
  }
  
  func goToDetails(_ trip: Trip?) {
    if let selectedTrip = trip {
      let detailController = DetailViewController.instantiate(selectedTrip)
      navigationController?.pushViewController(detailController, animated: true)
    }
  }
}

//MARK: - Extensions

//MARK: Datasource
extension ViewController: UITableViewDataSource {
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return tripsSection?.count ?? 0
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return tripsSection?[section].numberOfTripsOrRows ?? 0
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let viewModel = tripsSection?[indexPath.section]
    
    switch viewModel?.tripType {
    case .highlights:
        guard let tripCell = tableView.dequeueReusableCell(withIdentifier: "TripTableViewCell", for: indexPath) as? TripTableViewCell else {
          fatalError("error to create TripTableViewCell")
        }
        
        tripCell.setCell(viewModel?.trips[indexPath.row])
        
        return tripCell
        
    case .offers:
        guard let offerCell = tableView.dequeueReusableCell(withIdentifier: "OffersTableViewCell", for: indexPath) as? OffersTableViewCell else {
          fatalError("error to create OffersTableViewCell")
        }
        
        offerCell.setCell(viewModel?.trips)
        
        return offerCell
    
    default:
      return UITableViewCell()
    }
    
  }
}

//MARK: Delegate for set table header
extension ViewController: UITableViewDelegate {
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    let viewModel = tripsSection?[indexPath.row]
    
    switch viewModel?.tripType {
      case .highlights, .international:
        let selectedTrip = viewModel?.trips[indexPath.row]
        goToDetails(selectedTrip)
        
      default:
        break
    }
  }
  
  func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    if section == 0 {
      let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self, options: nil)?.first as? HomeTableViewHeader
      headerView?.setView()
      
      return headerView
    }
    return nil
  }
  
  func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    if section == 0 {
      return 300
    }
    return 0
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone ? 400 : 500
  }
}

