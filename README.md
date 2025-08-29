# 🧪 API-TESTING-G6
Final project for the API Testing module. This repository contains test cases, bug reports,  
and automation for the `Activities`, `Authors`, `Books`, `CoverPhotos`, and `Users` services  
provided by [FakeRestAPI](https://fakerestapi.azurewebsites.net/index.html).
## 📌 Project Description
The purpose of this project is to apply exploratory and functional (positive and negative) testing on a REST API, focusing on the following endpoints:
- `/api/v1/Activities`
- `/api/v1/Authors`
- `/api/v1/Books`
- `/api/v1/CoverPhotos`
- `/api/v1/Users`

Manual test cases were created and later automated to achieve high code coverage and validate the correct behavior of the exposed services.  
All documentation can be found at the following link:

**Link:** [https://docs.google.com/document/d/1Dq8VYWct4eY5VPTefG7UnVwqHMzTtfV6UKYgezCTGP4/edit?usp=sharing](https://docs.google.com/document/d/1sxDK1z4onyDA3dKw8f4bOIez9qzr9P6yss7WavDdK9g/edit?usp=sharing)
## 🛠️ Tech Stack
This project uses the following technologies and tools:
- **Lenguage:** Java - Js
- **Build Tool:** Maven
- **API Client:** Postman
- **Testing Framework:** [Karate DSL](https://github.com/karatelabs/karate)
- **Reports:** Cucumber
- **Bug Tracking:** [Trello](https://trello.com/b/Mu4bezeI/reporte-de-bugs)  
- **Test Case Management:** [Qase.io](https://qase.io).
## 🧰 Project Structure

```bash
fakerestapi-testing/
├── apitests/
│   ├── Authors/
│   │   ├── getAuthorById.feature
│   │   └── getAllAuthors.feature
│   ├── Books/
│   │   └── createBook.feature
│   ├── Activities/
│   │   ├── deleteEndpoints.feature
│   │   ├── getAllEndpoints.feature
│   │   ├── getEndpointById.feature
│   │   ├── postEndpoint.feature
│   │   └── putEndpoint.feature
│   ├── Users/
│   │   ├── getUserById.feature
│   │   └── getAllUsers.feature
│   ├── CoverPhotos/
│   │   ├── createCover.feature
│   │   ├── createCover.feature
│   │   └── getCover.feature
│   └── APITest.java
├── karate-config.js
├── pom.xml
└── README.md
```
## 🚀 How to Run the Tests

### 1. Install Java 11 and Maven on your system.
### 2. Clone the repository:
```bash
git clone https://github.com/zohan22/api-testing-g6
cd api-testing-g6
```
### 3. Install dependencies
```bash
mvn clean install
```
### 4. Run all tests with Maven
```bash
mvn test
```
### 5. Run a specific test file with Maven
```bash
mvn test mvn test -Dkarate.options="classpath:<path/to/file>>.feature"
```
### 6. View test reports: After test execution, the reports will be available at:
```bash
target/cucumber-html-reports/overview-features.html
```
## 👥 QA Automation and Test Design Team

| Name                  | GitHub                                      |
|-----------------------------|---------------------------------------------|
| Samuel Amonzabel Gonzales   | [@zohan22](https://github.com/zohan22)      |
| Jhose Téran     |   [@sjteranc](https://github.com/sjteranc) |
| Patricia Rengel Peñaranda   | [@PatriciaRengel](https://github.com/PatriciaRengel)    |
| Roger Laura        | [@rogerlaura](https://github.com/rogerlaura) |                            |
