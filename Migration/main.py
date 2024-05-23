import pymysql
import pymongo
from decimal import Decimal
from datetime import date, datetime, timedelta

# Connect to SQL database
sql_conn = pymysql.connect(
    host='127.0.0.1',
    port = 3306,
    user = 'root',
    password = '',
    database = 'Hospital_Management_System',
    unix_socket = '/Applications/XAMPP/xamppfiles/var/mysql/mysql.sock'
)

# Connect to MongoDB
mongo_client = pymongo.MongoClient("mongodb://localhost:27017/")
mongo_db = mongo_client["Hospital_Management_System"]

# Function to convert data types for MongoDB compatibility
def convert_type(value):
    if isinstance(value, Decimal):
        return float(value)
    elif isinstance(value, date):
        return datetime(value.year, value.month, value.day)
    elif isinstance(value, timedelta):
        return value.total_seconds()  # Convert timedelta to total seconds
    return value

# Function to migrate data from SQL to MongoDB
def migrate_table(table_name):
    # Fetch column names from SQL table
    cursor.execute(f"SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = 'Hospital_Management_System' AND TABLE_NAME = '{table_name}'")
    column_names = [row[0] for row in cursor.fetchall()]

    # Fetch data from SQL table
    cursor.execute(f"SELECT * FROM {table_name}")
    sql_data = cursor.fetchall()

    # Convert SQL data to MongoDB documents (JSON)
    mongo_documents = []
    for row in sql_data:
        doc = { column_names[i]: convert_type(value) for i, value in enumerate(row)}
        mongo_documents.append(doc)

    # Insert data into MongoDB collection
    mongo_collection = mongo_db[table_name]
    if mongo_documents:
        mongo_collection.insert_many(mongo_documents)

# Create a cursor object
cursor = sql_conn.cursor()

# Fetch all table names from the SQL database
cursor.execute("SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'Hospital_Management_System'")
tables = [row[0] for row in cursor.fetchall()]

# Migrate each table
for table in tables:
    migrate_table(table)

# Close connections
cursor.close()
sql_conn.close()
mongo_client.close()