This is a Calculator App. While the backend works as an API, the frontend sends JSON requests to obtain calculator results

# How to Setup

## How to Setup - backend

This is a backend part of the calculator. Please follow the instructions to run the calculator backend.

### Clone `calculator-backend` from the GIT
 - After cloning the folder, open the folder path in the terminal

### Install the composer
```sh
composer install
```

### Setup environment variables
- Setup environment variables in the `.env` file (Database, App_URL)

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

### Import Api's URL from Postman and send the `POST` request
- Import the `Calculator.postman_collection.json` file in the Postman App
- Send the `POST` requests as a JSON request

## How to Setup - Frontend

This is a front-end part of the calculator. Please follow the instructions to run the calculator frontend.

### Clone `calculator-frontend` from the GIT
 - After cloning the folder, open the folder path in the terminal

### Install the NPM
```sh
npm install
```

### Setup environment variables
- Setup environment variables in the `.env` file (main API URL of the backend)

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

