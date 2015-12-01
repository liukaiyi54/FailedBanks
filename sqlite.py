import sqlite3;
from datetime import datetime, date;

conn = sqlite3.connect('banklist.sqlite3')
c = conn.cursor()
c.execute('drop table if exists failed_banks')
c.execute('create table failed_banks(id integer primary key autoincrement, name text, city text, state text, zip integer, close_date text, updated_date text)')

def mysplit(string):
	quote = False
	retval = []
	current = ""
	for char in string:
		if char == '"':
			quote = not quote
		elif char == ',' and not quote:
			retval.append(current)
			current = ""
		else:
			current += char
	retval.append(current)
	return retval

data = open("banklist.csv", "r").readlines()[1:]
for entry in data:
	vals = mysplit(entry.strip())
	vals[4] = datetime.strptime(vals[4], "%d-%b-%y")
	vals[5] = datetime.strptime(vals[5], "%d-%b-%y")
	print "Inserting %s..." % (vals[0])
	sql = "insert into failed_banks values(NULL, ?, ?, ?, ?, ?, ?)"
	c.execute(sql, vals)

conn.commit()