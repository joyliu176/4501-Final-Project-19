# IEOR E4501 Final Project - Group 19 - Fall 2023

## Project Overview
This project is focused on leveraging data analytics to find the ideal residential area in New York City that offers tranquility and ample greenery. Utilizing open data from New York City, NYC’s zip codes with geometric boundary data and Zillow's historical rent data, our analysis involves an in-depth exploration of various neighborhoods, assessing factors like complaints, green spaces, and average rent prices.

### Goals 
We are looking for a great place in New York to live with my budget.
- To identify quiet neighborhoods with less complaints.
- To evaluate the presence and quality of green spaces.
- To analyze rent trends and affordability in different areas.

### Target Audience
- Individuals looking to move to New York City.
- Real estate agents seeking insights on neighborhood characteristics.
- Urban planners and researchers studying urban living conditions.

## Team Members
- Member 1: [Cecilia Lin](https://github.com/Cecilia030)
- Member 2: [Yaping Liu](https://github.com/joyliu176)

## Installation Guide
Ensure you have Python installed on your system, and follow these steps:

1. **Clone the Repository**
```python
git clone https://github.com/joyliu176/4501-Final-Project-19.git
```
```python
cd 4501-Final-Project-19
```

2. **Update your codebase**
```python
git pull origin main
```
3. **Install Dependencies**
```python
pip install -r requirements.txt
```

4. **Launch Jupyter Notebook**
```python
jupyter notebook
```
2. **Navigate to the Notebook Files**
- Open and run the `.ipynb` files within the Jupyter Notebook interface.
- Follow the instructions and comments in the notebooks for detailed guidance.

## Data Sources
This project uses the following datasets:
- Shapefiles of NYC’s zip codes with geometric boundary data from [here.](https://drive.google.com/drive/folders/1P89KAFAUAHVZsEcyDYVfD1L7pMeGBvIO)
- Historical monthly average rents by zip code from Zillow from [here.](https://drive.google.com/file/d/19h6qhJHjxyyNd4DML7pbf1pJGavQed0s/view)
- Historical data from NYC Open Data on [311 complaints](https://data.cityofnewyork.us/Social-Services/311-Service-Requests-from-2010-to-Present/erm2-nwe9) and the [2015 tree census](https://data.cityofnewyork.us/Environment/2015-Street-Tree-Census-Tree-Data/pi5s-9p35), for which you will download programmatically in your Notebook.

## Technologies
- Python
- Jupyter Notebook
- Libraries: pandas, geopandas, matplotlib, json, requests etc.
- Database: PostgreSQL

## Features
### Part 1: Data Preprocessing
  Downloading datasets, both manually and programmatically, cleaning and filtering the data, filling in missing values, and generating relevant 
  data samples.
  
### Part 2: Data Storage
  Storing the datasets obtained and cleaned in Part 1. The primary objective is to populate a PostgreSQL database with tables generated from these 
  datasets. Efficiently storing and retrieving data using PostgreSQL.
  
### Part 3:  Understanding Data
  A series of SQL queries are crafted to gain insights into the datasets used for this project. Each query is designed to answer a specific 
  question related to the data. The queries are saved as separate .sql files with descriptive names indicating their purpose. Analyzing the 
  datasets to identify key trends and insights.
## Part 4: Data Visualization
  Creating visualizations to gain insights and enhance our understanding of the datasets. These visualizations are generated using libraries like 
  Matplotlib, Geopandas, and other visualization tools. Each visualization is designed to be self-explanatory, with labeled axes, titles, and 
  appropriate visual elements.

## Contributing
We welcome contributions to our project. Please follow these steps to contribute:
1. Fork the repository.
2. Make your changes in a new branch.
3. Submit a pull request with a clear description of your changes.

## Contact
For any inquiries, please reach out to us at [tl3240@columbia.edu](mailto:your-tl3240@columbia.edu) and [yl5569@columbia.edu](mailto:your-yl5569@columbia.edu).


