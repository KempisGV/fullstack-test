# Requirements

Ruby version 2.7.4p191

Rails version 6.1.4.1

PostgreSQL version 13.4

## Installation

Go to [database.yml](config/database.yml) file and set your postgres password to development and test

Use the package manager bundle to install dependencies.

```bash
bundle install
```

Use the package manager yarn to install dependencies.

```bash
yarn install
```

Create and migrate the database.

```bash
rails db:create && rails db:migrate
```

To populate the database with initial data use the back up file: [start](start), you can restore this file in PG Admin, right click on the fullStack_development database and choose restore, there you can choose the start file.

## Running the app

If the previous steps were carried out correctly, it is time to run the application.

```bash
rails s
```

Once the Rails server is running, go to localhost: 3000
