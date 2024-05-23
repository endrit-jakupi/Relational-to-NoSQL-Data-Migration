# Migration of Data from a Relational Database to a NoSQL Database
## About the project
The Hospital Management System helps organize and manage data for patients and employees in a hospital. The database stores information about patients, doctors, nurses, administrators, medical records, billing, appointments, and hospital departments.  This project aims to migrate the existing relational database to a NoSQL database system, specifically MongoDB. MongoDB is the most suitable NoSQL database for our hospital management system due to its flexible document model, which aligns well with our data structure. Its strong consistency, scalability, and performance benefits make it an ideal choice for ensuring efficient and reliable management of patient and employee data.

## How to set up the project

### Relational database
For the relational database, we have decided to create it locally in phpmyadmin. Prior to that, ensure you have all the necessary packages installed in order to be able to use it. 
Find the Hospital_Management_System.sql database in the project directory and import it into phpmyadmin. Ensure all the tables and data are inserted properly so that you can proceed with the next step.

### NoSQL database
Before we proceed, make sure you have the following installed on your computer:
- Docker Desktop (or any Docker environment compatible with your operating system)
- MongoDB Compass

Step 1. Create a Docker Compose File
Create a file named 'docker-compose.yml' in a new directory with the following content:
```
version: '3.1'
services:
  mongo:
    image: mongo:latest
    volumes:
      - mongo-data:/data/db
    ports:
      - "27017:27017"
    mongo-express:
      image: mongo-express:latest
      depends_on:
        - mongo
      environment:
        ME_CONFIG_MONGODB_SERVER: mongo
      ports:
        - "8081:8081"
      volumes:
        mongo-data:
```
Step 2: Launch Your MongoDB Database
With the 'docker-compose.yml' file in place, open a terminal, navigate to the directory containing the file, and run the following command to start your MongoDB database and mongo-express interface: ```docker-compose up -d```   
This command will download the necessary Docker images, if they aren't already present, and start the services defined in your Docker Compose file.  
<br>Step 3: Connecting to Your MongoDB Database
After launching your MongoDB database, you can connect to it using MongoDB Compass or the mongo-express web interface. Download link: [https://www.mongodb.com/try/download/compass](https://www.mongodb.com/try/download/compass)  

#### MongoDB Compass
Open MongoDB Compass and connect to your database using the connection string: ```mongodb://localhost:27017```  
To proceed, you should create a database in MongoDB Compass named ```Hospital_Management_System```. Please note the name of the database, as you will need to specify it in the script. Python is case-sensitive, and in the case of a mismatch, it will cause an error.<br>It is important to mention that MongoDB Compass might require you to name a collection as well, so when you first create it, you can name it however you want, as it will be ignored when we execute the migration script.

### Python script
The final step of the project is to create and execute the Python script. Please find the main migration script [here](Migration/main.py). Make sure to download the migration script and open an IDE (PyCharm is recommended).  
Note the connection string that is used to connect to the relational database:  
```
sql_conn = pymysql.connect(
    host='127.0.0.1',
    port = 3306,
    user = 'root',
    password = '',
    database = 'Hospital_Management_System',
    unix_socket = '/Applications/XAMPP/xamppfiles/var/mysql/mysql.sock'
)
```
Make sure to match the values according to your connection string. For instance, the password in our case is empty as we do not need a password in order to connect to the database in phpmyadmin.  
<br>The same applies for the connection string that is used to connect to the NoSQL database:  
```
mongo_client = pymongo.MongoClient("mongodb://localhost:27017/")
mongo_db = mongo_client["Hospital_Management_System"]
```
The final step includes executing the script so that the migration of data from a Relational database to a NoSQL database is done properly. As soon as you execute the script, if no errors occur, the migration of the database should be completed. Lastly, you might want to go to MongoDB Compass, refresh the database, and check the tables and data migrated.
