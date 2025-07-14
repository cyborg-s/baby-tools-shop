# E-Commerce Project For Baby Tools

This project implements a functional e-commerce application based on Django for the management and presentation of baby products. The following instructions describe in detail the steps for setting up, running and deploying the application with Docker.



## Table of Contents
- [E-Commerce Project For Baby Tools](#e-commerce-project-for-baby-tools)
  - [Table of Contents](#table-of-contents)
  - [Prerequisites](#prerequisites)
  - [Quickstart](#quickstart)
  - [Usage Section](#usage-section)
    - [1. Clone Repository](#1-clone-repository)
    - [2. Navigate to the project directory](#2-navigate-to-the-project-directory)
    - [3. Create .env file](#3-create-env-file)
    - [4. Build the Docker Image and start the Service](#4-build-the-docker-image-and-start-the-service)
    - [5. Create a Superuser](#5-create-a-superuser)
    - [6. Verify the Deployment](#6-verify-the-deployment)
  - [Project Structure](#project-structure)
  - [Configuration](#configuration)
      - [Key configuration files:](#key-configuration-files)
  - [Photos](#photos)
      - [Home Page with login](#home-page-with-login)
      - [Home Page with filter](#home-page-with-filter)
      - [Product Detail Page](#product-detail-page)
      - [Home Page with no login](#home-page-with-no-login)
      - [Register Page](#register-page)
      - [Login Page](#login-page)
  - [License](#license)






## Prerequisites
- Python 3.9
- Django 4.0.2
- Docker
  
## Quickstart

Follow these steps to set up and run the project:

1. Clone the repository: 
```bash
git clone https://github.com/cyborg/baby-tools-shop
cd baby-tools-shop
```

2. Create the .env file based on the provided .envtemplate and customize the settings as needed.
```bash
cp .envtemplate . env
```
For macOS/Linux


3. Create and start the Docker container 
```bash
docker build -t baby-tools-shop .
docker run -d -p 8025:8025 --name baby-tools-shop-container baby-tools-shop
```

4. Call the application: Open your browser and visit: Visit http://<YOUR_IP_ADDRESSE>:8025 in your browser.


## Usage Section

### 1. Clone Repository
Clone your Git repository to the desired directory:
```bash
git clone https://github.com/cyborg-s/baby-tools-shop
```

### 2. Navigate to the project directory
```bash
cd baby-tools-shop
```

### 3. Create .env file
Create a .env file based on the provided .envtemplate and adjust the settings as needed.
```bash
cp .envtemplate .env
```
update the file with your hosts and Secret_key
```bash
nano .env
```

### 4. Build the Docker Image and start the Service
Start the container
```bash
docker build -t baby-tools-shop .
```
```bash
docker run -d -p 8025:8025 --name baby-tools-shop-container baby-tools-shop
```
- The -d flag runs the container in the background.
- The -p 8025:8025 maps the container port to the host machine.
- The --name baby-tools-shop-container assigns a name to the running container.


### 5. Create a Superuser
If you want to access the Django admin panel, create a superuser:
```bash
python manage.py createsuperuser
```
Follow the prompts to set up a username, email, and password.

### 6. Verify the Deployment
Check the application in your Browser
```bash
http://<YOUR_IP_ADRESS>:8025
```

If nedded, view container logs
```bash
docker logs baby-tools-container
```


## Project Structure
```bash
baby-tools-shop/
├── babyshop_app/
│   ├── babyshop/
│   │   ├── settings.py
│   │   └── urls.py
│   └── manage.py
├── requirements.txt
├── docker-compose.yml
├── Dockerfile
└── README.md
```

## Configuration
#### Key configuration files:
- `requirements.txt`: Python dependencies
- `Dockerfile`: Docker configuration
- `babyshop_app/babyshop/settings.py`: Main Django settings



## Photos

#### Home Page with login

<img alt="" src="https://github.com/MET-DEV/Django-E-Commerce/blob/master/project_images/capture_20220323080815407.jpg"></img>

#### Home Page with filter
<img alt="" src="https://github.com/MET-DEV/Django-E-Commerce/blob/master/project_images/capture_20220323080840305.jpg"></img>

#### Product Detail Page
<img alt="" src="https://github.com/MET-DEV/Django-E-Commerce/blob/master/project_images/capture_20220323080934541.jpg"></img>

#### Home Page with no login
<img alt="" src="https://github.com/MET-DEV/Django-E-Commerce/blob/master/project_images/capture_20220323080953570.jpg"></img>


#### Register Page

<img alt="" src="https://github.com/MET-DEV/Django-E-Commerce/blob/master/project_images/capture_20220323081016022.jpg"></img>


#### Login Page

<img alt="" src="https://github.com/MET-DEV/Django-E-Commerce/blob/master/project_images/capture_20220323081044867.jpg"></img>


##  License
This project is licensed under the MIT License - see the [LICENSE](/baby-tools-shop/LICENSE) file for details.