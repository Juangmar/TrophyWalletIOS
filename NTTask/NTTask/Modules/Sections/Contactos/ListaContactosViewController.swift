//
//  ListaContactosViewController.swift
//  NTTask
//
//  Created by Juan Gomez Martinho Gonzalez on 17/3/22.
//

import UIKit

class ListaContactosViewController: UIViewController {

    //MARK: - Variables
    var arrayContactos: [ArrayContact] = []
    
    
    @IBOutlet weak var listaContactosTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let model = Contacts.stubbedContacts{
            self.arrayContactos = model
        }

        self.setupTableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.listaContactosTableView.reloadData()
    }
    
    private func setupTableView(){
        self.listaContactosTableView.delegate = self
        self.listaContactosTableView.dataSource = self
        self.listaContactosTableView.register(UINib(nibName: "ContactosCell", bundle: nil), forCellReuseIdentifier: "ContactosCell")
    }

}

extension ListaContactosViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayContactos.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellContactos = self.listaContactosTableView.dequeueReusableCell(withIdentifier: "ContactosCell", for: indexPath) as! ContactosCell
        cellContactos.configCell(data: self.arrayContactos[indexPath.row])
        return cellContactos
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = self.arrayContactos[indexPath.row]
        let vc = DetalleContactoCoordinator.view(dto: DetalleContactoCoordinatorDTO(modelData: model))
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
