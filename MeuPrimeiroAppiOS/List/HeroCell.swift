import UIKit

class HeroCell: UITableViewCell {
    
    private let horizontalStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 35
        stack.backgroundColor = .black //Define a cor da Stack horizontal
        return stack
    }()
    
    private let imageHeroView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.cornerRadius = 10
        image.layer.masksToBounds = true
        image.backgroundColor = .systemGray2
        return image
    }()
    
    private let verticalStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        return stack
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.textColor = .white
        label.numberOfLines = 0
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupContentView()
        addViewsInHierarchy()
        setupConstraints()
        
    }
    
    @available (*, unavailable)
    required init?(coder: NSCoder) {
        nil
    }
    
    func configure(hero: Hero) {
        nameLabel.text = hero.name
        imageHeroView.download(at: hero.image.url)
    }
    
    private func setupContentView() {
        selectionStyle = .none
        contentView.backgroundColor = .black //Define a cor da Célula
        
        
    }
    
    private func addViewsInHierarchy() {
        contentView.addSubview(horizontalStack)
        horizontalStack.addArrangedSubview(imageHeroView)
        horizontalStack.addArrangedSubview(verticalStack)
        verticalStack.addArrangedSubview(nameLabel)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            horizontalStack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 32),
            horizontalStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 32),
            horizontalStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -32),
            horizontalStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            imageHeroView.widthAnchor.constraint(equalToConstant: 106),
            imageHeroView.heightAnchor.constraint(equalToConstant: 140)
        ])
    }
}
