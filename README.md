# Task Manager

A simple task manager application to help you organize and manage your tasks efficiently.

## Table of Contents

- [Task Manager](#task-manager)
  - [Table of Contents](#table-of-contents)
  - [Installation](#installation)
    - [Prerequisites](#prerequisites)
    - [Steps](#steps)
  - [Usage](#usage)
  - [Features](#features)
  - [Configuration](#configuration)
  - [Database](#database)
  - [Testing](#testing)
  - [Contributing](#contributing)
  - [License](#license)

## Installation

### Prerequisites

- Ruby version: `x.x.x`
- System dependencies: `list any dependencies`

### Steps

1. Clone the repository:
    ```sh
    git clone https://github.com/kevinchen234/task_manager.git
    cd task_manager
    ```

2. Install the required gems:
    ```sh
    bundle install
    ```

3. Set up the database:
    ```sh
    rails db:create
    rails db:migrate
    ```

## Usage

To start the application, run:
```sh
rails server
```

Then, open your browser and navigate to http://localhost:3000.

## Features
Create, read, update, and delete tasks
Organize tasks by categories
Set due dates and priorities
Mark tasks as completed

## Configuration
To customize the application, modify the configuration files in the config directory.

## Database
The application uses a PostgreSQL database. To initialize the database, run:
```sh
rails db:setup
```

## Testing
To run the test suite, use:
```sh
rails test
```

## Contributing
Fork the repository
Create a new branch (git checkout -b feature-branch)
Commit your changes (git commit -am 'Add new feature')
Push to the branch (git push origin feature-branch)
Create a new Pull Request

## License
This project is licensed under the MIT License - see the LICENSE file for details.
