
import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite local restaurant",
                 description: "What is your favorite restaurant to visit?"),
            Task(title: "Your favorite local cafe",
                 description: "What is your favorite cafe to visit?"),
            Task(title: "Your go-to brunch place",
                 description: "Where do you go for brunch?"),
            Task(title: "Your favorite hiking spot",
                 description: "Where do you go to be one with nature?")
        ]
    }
}
