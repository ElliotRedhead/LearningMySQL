import os
import datetime
import pymysql

username = "Elliot"

connection =  pymysql.connect(host='localhost', user=username, password='T3STsqlpass$!', db="Chinook")

try:
    with connection.cursor() as cursor:
        row=[("Bob", 21, "1990-02-06 23:04:56"),
        ("Jim", 56, "1955-05-09 13:12:45"),
        ("Fred", 100, "1911-09-12 01:01:01")]
        cursor.executemany("INSERT INTO Friends VALUES (%s,%s,%s);",row)
        connection.commit()
finally:
    connection.close()