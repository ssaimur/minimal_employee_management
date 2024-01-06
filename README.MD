# Employee Management Application

This repository contains a server and client application using Docker Compose. Follow the instructions below to set up and run the applications.

## Prerequisites

- Docker Engine installed and running.

## Getting Started

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/ssaimur/minimal_employee_management.git
   cd minimal_employee_management
   ```

2. **Build Docker Containers:**

   Make sure Docker daemon is running, then execute the following command:

   ```bash
   docker-compose build
   ```

   This command will build the necessary Docker images and start the containers. Please be patient during the first run as it might take some time to download dependencies and build the images.

3. **Run Docker Containers:**

   ```bash
   docker-compose up
   ```

   This command will start the containers. It initiates the services required for the server and client applications to run.

4. **Access the Client Application:**

   Once the Docker containers are up and running successfully, open your web browser and go to [http://localhost](http://localhost) to access the client application.

## Additional Instructions

- **Stopping the Containers:**

  To stop the running containers, use the following command:

  ```bash
  docker-compose down
  ```

- **Restarting the Containers:**

  If you need to restart the containers without rebuilding, use:

  ```bash
  docker-compose restart
  ```

- **Troubleshooting:**

  If you encounter any issues during the setup or while running the applications, refer to the logs using:

  ```bash
  docker-compose logs
  ```

  Additionally, make sure your Docker daemon is running and check for any error messages that might provide insights into the problem.

## Contributors

- [Saimur Rahman](https://github.com/ssaimur)
