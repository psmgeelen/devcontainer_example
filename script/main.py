import pandas as pd

url="https://raw.githubusercontent.com/cs109/2014_data/master/countries.csv"
processed_data = pd.read_csv(url).value_counts()

print(processed_data)
