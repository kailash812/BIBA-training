
import csv 
  
with open('Salary_Data.csv') as csvfile: 
    
    # Return a reader object which will 
    # iterate over lines in the given csvfile. 
    readCSV = csv.reader(csvfile, delimiter=',') 
    for row in readCSV: 
        print(row) 
        print(row[0]) 
        print(row[0], row[1], ) 
        print("\n") 

