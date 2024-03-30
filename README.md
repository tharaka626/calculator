This is a Calculator App. While the backend part work as API, frontend part send JSON request to get calculator results.

# How to Setup

## How to Setup - backend

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

## How to Setup - Fontend

This is a frontend part of the calculator. Please follow instructions to run the calculator frontend.

### Clone `calculator-frontend` from the GIT
 - After cloned the folder, open the folder path in terminal

### Install the NPM
```sh
npm install
```

### Setup enviornment vairables
- Setup enviornment variables in `.env` file (main api url of the backend)

### Compile and Hot-Reload for Development

```sh
npm run dev
```

### Compile and Minify for Production

```sh
npm run build
```


# Technologies

- **[Laravel V10](https://laravel.com/)**
- **[Postman](https://postman.com/)**
- **[Vue 3](https://vuejs.org/)**
- **[VSCode](https://code.visualstudio.com/)**

## Author

Tharaka Sandaruwan

