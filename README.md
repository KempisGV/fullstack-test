# Requirements

Ruby version 2.7.4p191

Rails version 6.1.4.1

PostgreSQL version 13.4

## Installation

Use the package manager bundle to install dependencies.

```bash
bundle install
```

Create and migrate the database.

```bash
rails db:create && rails db:migrate
```

To populate the database with initial data use the [start](start)
file

## Running the app

If the previous steps were carried out correctly, it is time to run the application.

```bash
rails s
```

Once the Rails server is running, go to localhost: 3000
