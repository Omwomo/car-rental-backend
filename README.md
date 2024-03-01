<a name="readme-top"></a>


<div align="center">

  <h3><b>Car-Rental-Backend: Vehicle Reservation App</b></h3>

</div>
# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 Car-Rental-Backend](#-Car-Rental-Backend)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [Front-End-Link](#front-end-link)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Usage](#usage)
    - [Deployment](#deployment)
  - [👥 Authors ](#-authors-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐ Show your support ](#-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 Car-Rental-Backend

*The Car-Rental-Backend* is an API application for managing car rental databases.

## 🛠 Built With <a name="built-with"></a>
- ✅ Ruby
- ✅ Ruby on Rails
- ✅ Postgresql
- ✅ Linters


### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Language</summary>
  <ul>
    <li>Ruby-on-Rails</li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- *🔐 User Authentication API* Implement a secure authentication system that supports user registration, login, and password management.
Enable token-based authentication to ensure secure communication between the frontend and backend.

- *🚗 Car Management API:* Develop endpoints to add, retrieve, update, and delete cars in the system.
Implement logic to mark cars as removed when deleted by administrators, ensuring they are not displayed on the frontend.

- *📅 Reservation Handling API:* Create endpoints to manage reservations, allowing users to make, view, and cancel reservations.
Implement logic to autofill user information and selected car details during reservation creation.

- *📊 Admin Privileges API:* Design a role-based access control system to differentiate between regular users and administrators.
Allow administrators to access the delete car functionality and other admin-specific features.

- *📱 Responsive Design API:* Develop API endpoints that provide data in a format optimized for both mobile and desktop views.
Ensure the backend supports responsive design principles, facilitating an optimal user experience on various devices.

- *📄 API Documentation using Rails Rswag:* Leverage Rails Rswag to generate comprehensive and user-friendly API documentation.
Include details about each endpoint, expected request/response formats, and authentication requirements.

- *🔍 Search and Filtering API:* Implement search and filtering capabilities for cars based on various criteria such as city, availability, and car features.
Enable users to efficiently find and reserve cars that match their preferences.

- *🔄 Real-time Updates API:* Implement a system for real-time updates to notify users of changes in car availability, reservation status, or other relevant information.
Utilize technologies such as WebSockets or server-sent events to enable real-time communication between the backend and frontend.

- *📈 Analytics and Reporting API:* Develop APIs for collecting and analyzing data related to reservations, user activity, and car availability.
Provide administrators with insights through reporting features to help in decision-making and system optimization.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Front-End-Link

The front-end repo is available [here](https://github.com/omwomo/car-rental-backend/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

*To get a local copy up and running, follow these steps.*

1. Download or clone this [repostory](git@github.com/omwomo/car-rental-backend/.git).
2. Provide a modern web browser.

### Prerequisites

*In order to run this project you need:*

- ✔ Ruby installed in your machine. you can download it from [here](https://www.ruby-lang.org/en/downloads/)
- ✔ IDE or a code editor installed in your machine.
- ✔ IRB.
- ✔ Get Postgresql up and running. you can download it from [here](https://www.postgresql.org/download/windows/).
- ✔ [Git](https://git-scm.com/downloads) installed in your machine.
- ✔ Sign in or sign up to your [Github](https://github.com/) account.
- ✔ A professional editer such as [VS Code](https://code.visualstudio.com/download).
- ✔ An Updated web browser such as Google Chrome, you can download it from [here](https://www.google.com/chrome/).

### Setup

- Clone this [repository](git@github.com/omwomo/car-rental-backend/.git) to your desired folder:

- Run this command in your command line interface:

```sh
  cd [YOUR FOLDER]
  git clone git@github.com:omwomo/car-rental-backend.git
  cd Full-Stack-Capstone-Backend
```
- open the folder in your code editor

- Update the config/database.yml with your database credentials under the development section

- Update the GEMFILE to match your version of ruby.

- Run these command in your command line interface:

```sh
 sudo bundle install
 rails db:drop
 rails db:create
 rails db:migrate
 rails db:seed
```

-  (Note : this 'sudo bundle install' command is only for UNIX and LINUX users if you are using windows run the terminal as a administrator and then run 'bundle install')


### Usage

- To run the project, execute the following command:

```sh
   rails server
```
### Api-Documentation
- After running 'rails server' paste this link in your browser to see full Api-Documentation.
```sh
   http://127.0.0.1:3000/api-docs/index.html
```

### Deployment

*This project is deployed by the author, no permission for deployment by any other client.*

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Muhammad Umair Muqeem**

- GitHub: [@umair-rao](https://github.com/umair-rao)
- Twitter: [@umair_ra0](https://twitter.com/umair_ra0)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/engr-umair-muqeem/)

👤 *Eugene Omwomo*

- GitHub: [@Omwomo](https://github.com/Omwomo)
- Twitter: [@eugeneoduor9](https://twitter.com/eugeneoduor9)
- LinkedIn: [LinkedIn](https://linkedin.com/in/Omwomo)

👤 *Bhushan Deshmukh*

- GitHub: [@bhushan354](https://github.com/bhushan354)
- LinkedIn: [Bhushan Deshmukh](https://www.linkedin.com/in/bhushan-deshmukh-5777851b1/)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- *Add info about each category*

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/omwomo/car-rental-backend/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐ Show your support <a name="support"></a>

If you like this project, kindly drop a start ⭐ for the [repository](https://github.com/omwomo/car-rental-backend);

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to express my heartfelt gratitude to my teammates for hard work and great collaboration efforts.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
