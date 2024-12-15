//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Peyman on 12/15/24.
//

import UIKit

class ColorsTableVC: UIViewController {
  
    var color  : [UIColor] = []
    
    enum Cells {
        static let colorCell = "ColorCell"
    }
    
    enum Segues {
        static let toDetails = "ToColorsDetailsVC"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
       
    }

    func addRandomColors(){
        for _ in 1...50{
            color.append(.random())
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let desVC = segue.destination as! ColorsDetailsVC
        desVC.color = sender as? UIColor
    }
}

extension ColorsTableVC: UITableViewDelegate , UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return color.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->  UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else {
            return UITableViewCell()
        }
        let colors = color[indexPath.row]
        cell.backgroundColor = colors
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let colors = color[indexPath.row]
        performSegue(withIdentifier: Segues.toDetails, sender: colors)
    }
}
