# 🧪 API-TESTING-G6
Proyecto final del módulo de pruebas de API, este respositorio contiene los casos de prueba, reportes 
y automatizacion hacia los servicios de `Activities`, `Authors`, `Books`, `CoverPhotos` y `Users`
expuestos por la [FakeRestAPI](https://fakerestapi.azurewebsites.net/index.html).
## 📌 Descripción del Proyecto
El propósito de este proyecto es aplicar pruebas exploratorias, funcionales (positivas y negativas) sobre una API REST, enfocándonos en los endpoints:
- `/api/v1/Activities`
- `/api/v1/Authors`
- `/api/v1/Books`
- `/api/v1/CoverPhotos`
- `/api/v1/Users`
Se han creado casos de prueba manuales y su posterior automatización con el objetivo de lograr un buen code coverage y validar el correcto comportamiento de los servicios expuestos.
## 🛠️ Stack Tecnológico
Este proyecto utiliza las siguientes tecnologías y herramientas:
- **Java 11**
- **Karate DSL** - Framework de testing basado en BDD.
- **Maven** - Gestor de dependencias.
- **Postman** - Cliente para pruebas manuales y manejo de endpoints.
- **Git** - Control de versiones.
## 🧰 Estructura del Proyecto

```bash
fakerestapi-testing/
├── apitests/
│   ├── authors/
│   │   ├── crearAutor.feature
│   │   ├── eliminarAutor.feature
│   │   └── obtenerAutor.feature
│   └── books/
│       ├── obtenerLibro.feature
│       └── ...
├── karate-config.js
├── pom.xml
└── README.md
```
## 🚀 Cómo ejecutar las pruebas

### 1. Instala Java 11 y Maven en tu sistema.
### 2. Clona el repositorio
```bash
git clone https://github.com/zohan22/api-testing-g6
cd api-testing-g6
```
### 3. Instalar las dependendencias
```bash
mvn clean install
```
### 4. Ejecuta las pruebas con Maven
```bash
mvn test
```
### 5. Ver reportes: Luego de ejecutar, se generará un reporte en
```bash
target/karate-reports/karate-summary.html
```
## ✍️ Colaboradores
- Samuel Amonzabel Gonzales - git 
- Jhoselin Teran Susan - git
- Patricia
- Roger
