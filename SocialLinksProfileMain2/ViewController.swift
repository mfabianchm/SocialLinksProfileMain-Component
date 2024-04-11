
import UIKit

class ViewController: UIViewController {
    
    let imageView = UIImageView(frame: CGRectMake(0, 0, 100, 100))
    let nameView = UILabel()
    let locationText = UILabel()
    let jobText = UILabel()
    let socialMediaStack = UIStackView()
    
    let socialMedias = ["Github", "Frontend Mentor", "LinkedIn", "Twitter", "Instagram"]

    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor = UIColor(named: "Dark-Grey")
        
        view.addSubview(imageView)
        view.addSubview(nameView)
        view.addSubview(locationText)
        view.addSubview(jobText)
        view.addSubview(socialMediaStack)
        configureImageView()
        configureNameView()
        configureLocationText()
        configureJobText()
        configureSocialMediaStack()
    }
    
    
    func configureImageView() {
        imageView.layer.masksToBounds = false
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.layer.cornerRadius = imageView.frame.height/2
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "avatar-jessica")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.heightAnchor.constraint(equalToConstant: 100),
            imageView.widthAnchor.constraint(equalToConstant: 100),
            imageView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    func configureNameView() {
        nameView.text = "Jessica Randall"
        nameView.textColor = .white
        nameView.font = UIFont.systemFont(ofSize: 35, weight: .medium)
        nameView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nameView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 30),
            nameView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
    
    func configureLocationText() {
        locationText.text = "London, United Kingdom"
        locationText.textColor = UIColor(named: "Green")
        locationText.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        locationText.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            locationText.topAnchor.constraint(equalTo: nameView.bottomAnchor, constant: 20),
            locationText.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
    
    func configureJobText() {
        jobText.text = "\"Front-end developer and avid reader.\""
        jobText.textColor = .white
        jobText.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            jobText.topAnchor.constraint(equalTo: locationText.bottomAnchor, constant: 20),
            jobText.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
    
    func configureSocialMediaStack() {
        socialMediaStack.translatesAutoresizingMaskIntoConstraints = false
        socialMediaStack.axis = .vertical
        socialMediaStack.spacing = 20
        socialMediaStack.distribution = .fillEqually
        
        socialMedias.forEach { text in
            let labelView = UILabel()
            labelView.text = text
            labelView.textAlignment = .center
            labelView.backgroundColor = UIColor(named: "Grey")
            labelView.font = UIFont.systemFont(ofSize: 20, weight: .bold)
            labelView.textColor = .white
            labelView.layer.masksToBounds = true
            labelView.layer.cornerRadius = 10
            
            NSLayoutConstraint.activate([
                labelView.heightAnchor.constraint(equalToConstant: 60),
            ])
            
            socialMediaStack.addArrangedSubview(labelView)
        }

        NSLayoutConstraint.activate([
            socialMediaStack.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 20),
            socialMediaStack.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -20),
            socialMediaStack.topAnchor.constraint(equalTo: jobText.bottomAnchor, constant: 30)
        ])
    }
    

}

