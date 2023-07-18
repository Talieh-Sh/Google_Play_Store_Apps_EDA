# Google Play Store Apps EDA
This repository contains Python code for Exploratory Data Analysis (EDA) of a dataset related to Google Play Store apps from the Kaggle website.
The code performs data cleaning, visualization, and analysis on the dataset.
## Project Description:
This project aims to perform EDA on the Google Play Store dataset to gain insights into app attributes such as ratings, reviews, installs, prices, etc.
## Background:
The code is written in Python and uses popular data analysis libraries such as pandas, numpy, seaborn, and matplotlib.

## Features:
The code performs the following tasks:

Imports the necessary dependencies (pandas and numpy).
Extracts data from CSV files (googleplaystore.csv and googleplaystore_user_reviews.csv) using the read_csv function from pandas.
Performs data cleaning operations on the app_df DataFrame, including handling missing values and converting data types.
Displays information about the dataset using the info function and prints the first few rows using the head function.
Computes descriptive statistics using the describe function.
Visualizes the distribution of app types using pie charts and box plots.
Creates a pair plot for analyzing relationships between different app attributes.
Compares the app names in app_df and review_df to identify similar and dissimilar names.
Generates word clouds for positive and negative reviews using the WordCloud library.
Performs an in-depth EDA using the sweetviz library to generate HTML reports for app_df and review_df.
Creates a pivot table to analyze the average ratings of different app categories based on their types.

## Installation:
To run this code, follow these steps:

Install Python (version 3.6 or above) on your system.
Install the required dependencies by running the following command:

pip install pandas numpy seaborn matplotlib sweetviz wordcloud pivottablejs


Download the CSV files (googleplaystore.csv and googleplaystore_user_reviews.csv) and place them in a directory named "Resources" in the same directory as the Python script.
Run the Python script.
## Usage:
After running the script, you will see the output and visualizations in the console and/or in generated HTML reports. You can analyze the results and gain insights into the Google Play Store app dataset.

## Built With:

Python - The programming language used for data analysis and visualization.

pandas - A powerful data manipulation library.

numpy - A library for numerical computations.

seaborn - A library for statistical data visualization.

matplotlib - A plotting library for creating visualizations.

sweetviz - A library for automated EDA report generation.

wordcloud - A library for generating word clouds.

pivottablejs - A JavaScript library for creating pivot tables.

