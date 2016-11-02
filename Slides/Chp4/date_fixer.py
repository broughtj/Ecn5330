import datetime as dt

infile = open("temp.csv", "r")
raw_data = infile.readlines()
infile.close()

outfile = open("macro-unix.csv", "w")

for i, row in enumerate(raw_data):
    if i == 0:
        outfile.write(row)
        continue
    item = row.strip().split(",")
    print(item[0])
    date = dt.datetime.strptime(item[0], "%b-%y")
    item[0] = dt.datetime.strftime(date, "%m-%d-%Y")
    outfile.write(",".join(item) + "\n")

outfile.close()




