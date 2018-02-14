import csv
import itertools

with open('Bike-NYC.csv', 'rb') as csvfile:
	reader = csv.reader(csvfile, delimiter=',', quotechar='|', skipinitialspace = True)
	bike_id = []
	start_station_id = []
#save bikeid here
	for row in itertools.islice(reader, 0,5):
		print row[11],"\t",row[3]
#save the output as a file as a json file 

