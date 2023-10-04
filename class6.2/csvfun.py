import csv

# Splitting on comma is a bad idea if there's
# a chance that there are commas within a field.

print("First field when splitting on comma")
f = open("complicated.csv")
for line in f:
    parts = line.split(",")
    print(parts[0])
f.close()

# Better: use the csv library, which knows how to 
# deal with quotes around fields that contain commas.

print()
print("First field when using csv library")
f = open("complicated.csv")
myreader = csv.reader(f, delimiter=",")
for row in myreader:
    print(row[0])
f.close()




