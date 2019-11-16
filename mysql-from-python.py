import os
import datetime
import pymysql

username = "Elliot"

connection =  pymysql.connect(host='localhost', user=username, password='T3STsqlpass$!', db="Chinook")

try:
    with connection.cursor() as cursor:
        cursor.execute("""CREATE TABLE IF NOT EXISTS
                        Friends(name char(20), age int, DOB datetime);""")
        # The above  will display a warning if the table already exists.
        sql = "SELECT * FROM Artist;"
        cursor.execute(sql)
        for row in cursor:
            print(row)
finally:
    connection.close()