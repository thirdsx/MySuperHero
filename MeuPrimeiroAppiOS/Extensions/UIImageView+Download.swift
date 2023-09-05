import UIKit

extension UIImageView {
    func download(at url: String) {
        let imageURL = URL(string: url)!
        
        let task = URLSession.shared.dataTask(with: .init(url: imageURL)) {data, response, error in
            if error != nil { return }
            
            guard let data else { return }
            
            DispatchQueue.main.async {
                self.image = UIImage(data: data)
            }
        }
        
        task.resume()
    }
}
