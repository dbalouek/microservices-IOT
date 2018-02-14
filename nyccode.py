import csv
import itertools
import json

with open('Bike-NYC.csv', 'rb') as csvfile:
	reader = csv.reader(csvfile, delimiter=',', quotechar='|', skipinitialspace = True)

	dataset = {} #the datastructure to display my data in the file
	bike_id = [] #bike_id, start_station_id, and end_station_id are the variables
	start_station_id = []
	end_station_id = []
	dataset['dataset'] = [] #naming the data structure making it an array
	counter = 0 #counter for the RequestId

	for row in itertools.islice(reader, 1,5):  #extracting rows 1-5
		print row[11],"\t",row[3],"\t", row[7] #printing columns corresponding to variables
		counter+=1 #adding to the counter
		dataset['dataset'].append({  #forming the data structure combinig the variables
			'RequestId': counter, #printing the variables for output file
			'bikeid':row[11],
			'start station id':row[3],
			'end station id': row[7]
		})

with open('dataset.txt' , 'w') as outfile: #exporting the output into the file
	json.dump(dataset, outfile)

