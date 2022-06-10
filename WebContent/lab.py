import csv
with open("fi.csv","w",newline="") as p:
    writer =csv.writer(p)
    with open("lab2.csv","r") as p1:
        reader=csv.reader(p1)
        for row in reader:
            row.append((int(row[7])/(int(row[8]))*100)
            writer.writerow(row)
