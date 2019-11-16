import os
import pymysql

username = "Elliot"

connection =  pymysql.connect(host='localhost', user=username, password='T3STsqlpass$!', db="Chinook")

try:
    with connection.cursor() as cursor:
        sql = "SELECT * FROM Artist;"
        cursor.execute(sql)
        result = cursor.fetchall()
        print(result)
finally:
    connection.close()