# Lab | End to End : SQL query & Data Wrangling in Python & Visualise in Python or Tableau

## Introduction

In this exercise, you will both practice the pandas python techniques from week 1, SQL querying we discussed in the lessons this week and what you learnt about plotting in Python in week1/2 or what you learnt about visualising data in Tableau in week 2
You may also in this lab take some time to learn new techniques by looking up documentation and references. You will work on your own but remember the teaching staff is at your service whenever you encounter problems.

In this lab you will be working on [sqlpy-sakila_or_harry.ipynb](sqlpy-sakila_or_harry.ipynb). 
Download the jupyter file to get started. 

When you are on `ssqlpy-sakila_or_harry.ipynb`, read the instructions for each part of the process and provide your answers with the correct code. 
Make sure to test your answers in each cell and save the notebook.Jupyter Notebook should automatically save your work progress. But it's a good idea to periodically save your work manually just in case.


## Goals

In this lab, you will examine some MySQL tables from your local mysql instance, either from the Sakila db, or the Harry Potter db if you have run the dump file.

You will need to import the `pymysql` library and the `create_engine` function from the `sqlalchemy` library to connect python and MySQL as you saw in class today.

```python
import pymysql
from sqlalchemy import create_engine
```

Once your connection is established with the database you will use some basic SELECT queries to retrieve the data you want in order to answer the questions.

:bulb: If you receive import errors for `pymysql` or `sqlalchemy`, it means you need to install them with `conda install` or `pip install`.

:bulb: you can also go through [this blog](https://hackersandslackers.com/pandas-and-sqlalchemy/) step by step to complete your installation 


### Challenge Steps

1. Install the required software to connect python and MySQL (see above) 
2. Connect to the server and collect all the appropriate data from users and posts tables with the support of MySQL queries.
3. Evaluate and potentially amend your query to ensure you have a dataframe you can easily visualise
4. (optional) Create a merged dataframe with your queries **Take into account that you will need some additional steps to enable merging.**
5. Export the data frame to csv - potentially filtered to a subset of rows by date or a subset of useful columns. 
6. Summarise and visualise your insight into the data. You can visualise this inside Python using one of the visualisation libraries (seaborn/matplotlib/bokeh/plotly), or if you prefer, by connecting to the csv with Tableau.
7.  Bonus - add in other interesting features to your visualisations. 
8.  publish the csv, your completed jupyter notebook and any visualisations to a github repo with an appropriately worded/formatted readme to navigate your deliverables (if you are using Tableau, save the workbook to your tableau public account and publish the url on your github readme)

### What do we really want to know from the data ? 

You know the data - its up to you to frame an interesting and specific question that can be visualised. 

:bulb: if you are struggling with SQL and Python today, but you still want to do some nice visualisations during this lab, here is an option for you. I have uploaded an excel file containing data about the [top 500 youtube gamers](500_YouTube_Games.xlsx) (warning : out of date, from 2017) which you can read into python and visualise or read into excel and visualise. In this case you will be looking at the relationship between youtube accounts, subscribers and views and can still do some interesting data analysis and insight. 


**:exclamation: If you feel you are already good at Python/Pandas and don't need the instructions in `sqlpy-sakila_or_harry.ipynb` to walk you through the steps, please feel free to skip `sqlpy-sakila_or_harry.ipynb` and create your own solution files.**

## Deliverables

- `sqlpy-sakila_or_harry.ipynb` with your completed code.
- `csv` containing the resulting dataframe
- visualisation inside `sqlpy.ipynb` or other tool, such as tableau public url of published workbook, any chart images exported as png

## Submission

Upon completion, add your deliverables to git, commit your code and submit to your github repo, which would likely include running the below from your command line

  ```
  git add .
  git commit -m "<lab or project name>"
  git push origin master
  ```
Do ensure you have a tidy, readable .md file for your lab. See [this link](https://levelup.gitconnected.com/github-readme-cheatsheet-617dff61fa23) and [this link](https://www.makeareadme.com) for ideas on how to make a great readme your teaching team will enjoy

- you can then submit your github url via the Student Portal

