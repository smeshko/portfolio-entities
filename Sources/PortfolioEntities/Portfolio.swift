import Foundation

public struct PortfolioDto: Codable {
    public let fetchDate: Date
    public let image: ImageDto
    public let name: String
    public let description: String
    public let social: SocialDto
    public let skills: SkillsDto
    public let education: [EducationDto]
    public let experience: [ExperiencePreviewDto]

    public init(
        fetchDate: Date,
        image: ImageDto,
        name: String,
        description: String,
        social: SocialDto,
        skills: SkillsDto,
        education: [EducationDto],
        experience: [ExperiencePreviewDto]
    ) {
        self.fetchDate = fetchDate
        self.image = image
        self.name = name
        self.description = description
        self.social = social
        self.skills = skills
        self.education = education
        self.experience = experience
    }
}

public struct SocialDto: Codable {
    public let linkedIn: String
    public let github: String
    public let blog: String
    public let email: String

    public init(linkedIn: String, github: String, blog: String, email: String) {
        self.linkedIn = linkedIn
        self.github = github
        self.blog = blog
        self.email = email
    }
}

public struct SkillsDto: Codable {
    public let advanced: [SkillDto]
    public let intermediate: [SkillDto]
    public let devEnvironment: [SkillDto]

    public init(advanced: [SkillDto], intermediate: [SkillDto], devEnvironment: [SkillDto]) {
        self.advanced = advanced
        self.intermediate = intermediate
        self.devEnvironment = devEnvironment
    }
}

public struct SkillDto: Codable {
    public let name: String
    public let image: ImageDto

    public init(name: String, image: ImageDto) {
        self.name = name
        self.image = image
    }
}

public struct ImageDto: Codable {
    public let imageKeyLight: String
    public let imageKeyDark: String

    public init(imageKeyLight: String, imageKeyDark: String) {
        self.imageKeyLight = imageKeyLight
        self.imageKeyDark = imageKeyDark
    }
}

public struct EducationDto: Codable {
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

public struct ExperiencePreviewDto: Codable {
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

public struct ExperienceDto: Codable {
    public struct ProjectDto: Codable {
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
    public let projects: [ProjectDto]

    public init(
        id: Int,
        period: String,
        position: String,
        company: String,
        location: String,
        description: String,
        technologies: [String],
        projects: [ExperienceDto.ProjectDto]
    ) {
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
