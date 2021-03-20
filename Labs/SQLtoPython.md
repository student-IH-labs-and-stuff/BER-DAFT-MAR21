![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | Data Cleaning

## Introduction

We keep seeing a common phrase that 80% of the work of a data scientist is data cleaning. We have no idea whether this number is accurate but anyone working with data certainly spends lots of time and effort in collecting, cleaning and preparing the data ready for analysis. This is because datasets are usually messy and complex in nature. It is a very important skill to be able to refine and restructure datasets into a usable state in order to proceed to the data analysis stage.

In this exercise, you will both practice the data cleaning techniques we discussed in the lesson and learn new techniques by looking up documentation and references. You will work on your own but remember the teaching staff is at your service whenever you encounter problems.

## Getting Started


In this lab you will be working on [sqlpy.ipynb](sqlpy.ipynb). Download the jupyter file or launch it from your fork. To launch it, first navigate to the directory that contains `sqlpy.ipynb` in Terminal, then execute `jupyter notebook`. In the webpage that is automatically opened, click the `sqlpy.ipynb` link to launch it.

When you are on `sqlpy.ipynb`, read the instructions for each cell and provide your answers. Make sure to test your answers in each cell and save. Jupyter Notebook should automatically save your work progress. But it's a good idea to periodically save your work manually just in case.

## Goals

In this lab, you will examine some MySQL tables from [here](https://relational.fit.cvut.cz/dataset/Stats). This database contains an anonymized dump of all user-contributed content on the Stats Stack Exchange network.

You will need to import the `pymysql` library and the `create_engine` function from the `sqlalchemy` library.

```python
import pymysql
from sqlalchemy import create_engine
```

Once your connection is established with the database you will use some basic SELECT queries to retrieve the data in order to answer the questions.

:bulb: If you receive import errors for `pymysql` or `sqlalchemy`, it means you need to install them with `pip`.

### Challenge Questions

1. Connect to the server and collect all the data from users and posts tables.
2. Create a merged dataframe with users and post tables. **Take into account that you will need some additional steps to enable merging.**
3. Identify missing values in the merged dataframe and apply an appropriate method to fill those records as needed.
4. Change the data types of your merged dataset accordingly. 
5. Export the merged data set to csv - potentially filtered to a subset of rows by date or a subset of useful columns. 
6. Summarise and visualise the relationship between the no. of posts each user has made with the median view count for that users' posts. Bonus - add in other interesting features such as the comment buckets to your visualisation. 


**:exclamation: If you feel you are already good at Python/Pandas and don't need the instructions in `sqlpy.ipynb` to walk you through the steps, please feel free to skip `sqlpy.ipynb` and create your own solution files.**

## Deliverables

- `sqlpy.ipynb` with your responses to each of the questions.
- `stackoverflow.csv` containing the 'cleaned' merged dataset.
- visualisation inside `sqlpy.ipynb` or other tool, such as tableau /excel chart exported as png.  

## Submission

Upon completion, add your deliverables to git. Then commit git, push to your repo as in the previous labs. 

- Upon completion, commit your code and submit to your github repo, which would likely include running the below from your command line

  ```
  git add .
  git commit -m "<lab or project name>"
  git push origin master
  ```
- you can then submit your github url via the Student Portal

## Resources

[Data Cleaning Tutorial](https://www.tutorialspoint.com/python/python_data_cleansing.html)

[Data Cleaning with Numpy and Pandas](https://realpython.com/python-data-cleaning-numpy-pandas/#python-data-cleaning-recap-and-resources)

[Data Cleaning Video](https://www.youtube.com/watch?v=ZOX18HfLHGQ)

[Data Preparation](https://www.kdnuggets.com/2017/06/7-steps-mastering-data-preparation-python.html)

[Google Search](https://www.google.es/search?q=how+to+clean+data+with+python)
