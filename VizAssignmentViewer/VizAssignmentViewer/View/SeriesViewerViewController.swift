import Foundation
import UIKit

class SeriesViewerViewController : UIViewController {
    
    let seriesSlider = UISlider()
    let sliceView = UIImageView()
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .black
        self.view = view
    }
    
    override func viewDidLoad() {
        setupInterface()
    }
    
    func setupInterface() {
        seriesSlider.translatesAutoresizingMaskIntoConstraints = false
        sliceView.translatesAutoresizingMaskIntoConstraints = false
        sliceView.layer.borderColor = UIColor.white.cgColor
        sliceView.layer.cornerRadius = 5.0
        sliceView.layer.borderWidth = 1.0
        view.addSubview(seriesSlider)
        view.addSubview(sliceView)
        NSLayoutConstraint.activate([
            sliceView.widthAnchor.constraint(equalToConstant: 300.0),
            sliceView.heightAnchor.constraint(equalToConstant: 300.0),
            sliceView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            sliceView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            seriesSlider.widthAnchor.constraint(equalToConstant: 300.0),
            seriesSlider.heightAnchor.constraint(equalToConstant: 44.0),
            seriesSlider.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            seriesSlider.bottomAnchor.constraint(equalTo: sliceView.bottomAnchor, constant: 70.0)
        ])
    }
}
