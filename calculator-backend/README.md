## How to Setup

This is a backend part of the calculator. Please follow instructions to run the calculator backend.

### Clone `calculator-backend` from the GIT
 - After cloned the folder, open the folder path in terminal

### Install the composer
```sh
composer install
```

### Setup enviornment vairables
- Setup enviornment variables in `.env` file (Database,App_URL)

### Migrate the database tables
```sh
php artisan migrate
```

### Generate a key
```sh
php artisan key:generate
```

### Run the project
```sh
php artisan serve
```

### Import Api's URL from postman and send the `POST` request
- Import `Calculator.postman_collection.json` file in the Postman App
- Send the `POST` requests as a JSON request


## Technologies

- **[Laravel V10](https://laravel.com/)**
- **[Postman](https://postman.com/)**
- **[VSCode](https://code.visualstudio.com/)**

## Author

Tharaka Sandaruwan