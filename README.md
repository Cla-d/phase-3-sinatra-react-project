# Overview
This is the backend component of a task management application built with Ruby and Sinatra. The backend provides a RESTful API for creating, reading, updating, and deleting tasks, and also handles user authentication and session management. The application uses an sqlite3 database to store data.

## Setup
To run the backend component of the application, you will need to have Ruby (version 2.6 or later) and sqlite3 installed on your system. You can then follow these steps:

1. Clone the repository to your local machine.
2. Navigate to the backend directory.
3. Install the required gems by running bundle install.
4. Create an sqlite3 database by running rake db:create.
5. Run the database migrations by running rake db:migrate.
6. Optionally, you can populate the database with some initial data by running ruby seeds.rb.
7. Start the backend server by running ruby app.rb.
8. The backend server should now be running on http://localhost:9292.

# API Documentation
The backend provides GET, POST, PATCH and DELETE API endpoints:

[Frontend Repository](https://github.com/Wattima/movie_finder_frontend.git)

