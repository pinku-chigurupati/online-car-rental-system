import mysql.connector
mydb=mysql.connector.connect(host="localhost",user="root",password="Pinku@2001",port=3306)
print("connected")
cur=mydb.cursor()
cur.execute("show databases")
for i in cur:
    print (i)