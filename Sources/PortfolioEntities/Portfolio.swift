import Foundation

public struct Portfolio {
    public let fetchDate: Date
    public let imagePath: String
    public let name: String
    public let description: String
    public let skills: Skills
    public let education: [Education]
    public let experience: [ExperiencePreview]

    public init(fetchDate: Date, imagePath: String, name: String, description: String, skills: Skills, education: [Education], experience: [ExperiencePreview]) {
        self.fetchDate = fetchDate
        self.imagePath = imagePath
        self.name = name
        self.description = description
        self.skills = skills
        self.education = education
        self.experience = experience
    }
}

public struct Skills {
    public let advanced: [Skill]
    public let intermediate: [Skill]
    public let devEnvironment: [Skill]

    public init(advanced: [Skill], intermediate: [Skill], devEnvironment: [Skill]) {
        self.advanced = advanced
        self.intermediate = intermediate
        self.devEnvironment = devEnvironment
    }
}

public struct Skill {
    public let name: String
    public let image: String

    public init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}

public struct Education {
    public let period: String
    public let degree: String
    public let university: String
    public let location: String

    public init(period: String, degree: String, university: String, location: String) {
        self.period = period
        self.degree = degree
        self.university = university
        self.location = location
    }
}

public struct ExperiencePreview {
    public let id: Int
    public let position: String
    public let company: String
    public let location: String
    public let period: String

    public init(id: Int, position: String, company: String, location: String, period: String) {
        self.id = id
        self.position = position
        self.company = company
        self.location = location
        self.period = period
    }
}

public struct Experience {
    public struct Project {
        public let name: String
        public let description: String
        public let technologies: [String]

        public init(name: String, description: String, technologies: [String]) {
            self.name = name
            self.description = description
            self.technologies = technologies
        }
    }

    public let id: Int
    public let period: String
    public let position: String
    public let company: String
    public let location: String
    public let description: String
    public let technologies: [String]
    public let projects: [Project]

    public init(id: Int, period: String, position: String, company: String, location: String, description: String, technologies: [String], projects: [Experience.Project]) {
        self.id = id
        self.period = period
        self.position = position
        self.company = company
        self.location = location
        self.description = description
        self.technologies = technologies
        self.projects = projects
    }
}
