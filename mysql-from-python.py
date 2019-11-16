import os
import datetime
import pymysql

username = "Elliot"

connection =  pymysql.connect(host='localhost', user=username, password='T3STsqlpass$!', db="Chinook")

try:
    with connection.cursor() as cursor:
        cursor.execute("UPDATE Friends SET age = 22 WHERE Name = 'Bob';")
        connection.commit()
finally:
    connection.close()