import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var heroName: UILabel!
    @IBOutlet weak var heroImageView: UIImageView!
    @IBOutlet weak var heroNameDescription: UILabel!
    @IBOutlet weak var heroOccupation: UILabel!
    @IBOutlet weak var heroPlaceOfBirth: UILabel!
    @IBOutlet weak var heroGender: UILabel!
    @IBOutlet weak var heroFirstAppearance: UILabel!
    @IBOutlet weak var heroHeight: UILabel!
    @IBOutlet weak var heroWeight: UILabel!
    @IBOutlet weak var heroIntelligence: UILabel!
    @IBOutlet weak var heroSpeed: UILabel!
    @IBOutlet weak var heroStrength: UILabel!
    @IBOutlet weak var heroDurability: UILabel!
    @IBOutlet weak var heroPower: UILabel!
    @IBOutlet weak var heroCombat: UILabel!
    @IBOutlet weak var heroRealName: UILabel!
    
    var hero: Hero!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black

        heroImageView.layer.cornerRadius = 10
        heroImageView.layer.masksToBounds = true
        heroImageView.contentMode = .scaleAspectFill
        heroImageView.backgroundColor = .blue
        
        heroName.text = hero.name
        heroImageView.download(at: hero.image.url)
        heroNameDescription.text = hero.name
        heroRealName.text = hero.biography.fullName
        heroOccupation.text = hero.work.occupation
        heroPlaceOfBirth.text = hero.biography.placeOfBirth
        heroGender.text = hero.appearance.gender
        heroFirstAppearance.text = hero.biography.firstAppearance
        heroHeight.text = hero.appearance.height[1]
        heroWeight.text = hero.appearance.weight[1]
        heroIntelligence.text = hero.powerstats.intelligence
        heroSpeed.text = hero.powerstats.speed
        heroStrength.text = hero.powerstats.strength
        heroDurability.text = hero.powerstats.durability
        heroPower.text = hero.powerstats.power
        heroCombat.text = hero.powerstats.combat
    }

}
