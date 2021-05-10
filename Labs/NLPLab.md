
## NLP Lab 

The purpose of todays lab is to calculate and validate the customer sentiment (polarity) based on reviews of purchased womens clothing, as an introduction to using NLP techniques on text data and retrieving actionable data insights per department / division at the womens clothing company.  


> This lab has been designed to be completed at either **Starter level** or **Stretch level** - in order to accomodate different technical / time / motivation levels in the class. **Starter** - is the minimum required deliverable for today's lab, so you should complete the steps below as directed before submitting the url to your notebook via the student portal. **Stretch** will take you longer and the actions you will take are prompted, rather than prescriptive.  


You will follow the instructions and concepts you saw in class today to:
+ retrieve the data 
+ sample customer reviews using textblob
+ use a function to apply sentiment analysis to the whole data set
+ visualise the sentiment by department / division
*(optional- Stretch)*
+ visualise to validate the sentiment analysis
+ apply another sentiment analyser
+ identify and evaluate the differences between each approach

#### Each step below is given a description of what to do and key stages are accompanied by prompt images in [this folder](https://github.com/student-IH-labs-and-stuff/BER-DAFT-MAR21/tree/main/Labs/NLPscreenshots) to confirm you are on the right track 

------

### Starter steps 

1. retrieve the data from this [kaggle link](https://www.kaggle.com/nicapotato/womens-ecommerce-clothing-reviews)
2. install texblob onto your conda environment
3. launch jupyter notebook in the same environment, and import pandas, matplotlib/seaborn and textblob 
4. read the data into a dataframe with pandas
5. filter the data frame to a relevant subset of columns required for our data scenario (image clothing_columns.png)
6. use df.columns.str.lower() (or other preferred method) to standardise your column headers
7. EDA - with descriptive statistics (eg `describe()`, `shape`, `info()`) and/or simple charts, explore and familiarise yourself with the data at your own pace - clarify what each column means/contains and what cleaning steps could be employed (and if needed for our scenario)
8. use the pandas [groupby function](https://realpython.com/pandas-groupby) to summarise the average rating by division and department as a new dataframe (image clothing_rating_groupby.png)
9. this dataframe can be easily visualised as a bar chart - do so now (image clothing_rating_chart.png) 
10. OPTIONAL - if you find it difficult to do this group by and visualise task in python- you can connect to the csv with Tableau and do the same chart there! this is also a useful exercise to remind you of how to work with Tableau (image clothing_rating_tableau.png)
11. do a spot /sample check on the review column, index position 5 (hint: iloc/loc/at) to apply textblob over the selected review text (image clothing_sentiment_index5.png) Do this for at least 3 samples to evaluate the accuracy of the sentiment polarity and subjectivity against the text itself
12. for the any selected customer review, use textblob to break out the text into sentences (image clothing_sentences.png)
13. using dropna, remove any rows in your data which contain have null in the review column ( hint your new data will be 22641 rows)
14. define a function with lambda (or other preferred method) to calculate sentiment polarity for each row of the filtered review data set, as a new column on the data frame. (image clothing_sentiment_allrows.png)
15. using the pandas groupby function again, summarise the minimum review polarity, by division and department as a new dataframe (image clothing_min_review.png) - this means whats the lowest sentiment score seen in each department and division - so everything will be less than 0
16. visualise this summary as a simple sorted bar chart (image clothing_min_review_chart.png)
17. using the pandas groupby function again, summarise the average review polarity, by division and department as a new dataframe
18. visualise this summary as a simple sorted bar chart 
19. OPTIONAL - if you find it difficult to do these group by and visualise tasks in python- you can output your data frame to a csv, then connect to that csv with Tableau and do the same charts there! this is also a useful exercise to remind you of how to work with Tableau (image clothing_polarity_tableau.png)
20. tidy up your notebook as much as possible, removing any redundant code, and adding annotations where useful 

---- 

### Stretch guidance (optional follow on activities)

1. how accurate is the sentiment polarity calculated on this data set? how can you tell ? 
2. what are the most useful ways to visualise the sentiment polarity against the other data in the reviews data set? (hint: tableau or seaborn, exploratory data visualisation) - I have started this in Tableau - heres [my workbook](https://public.tableau.com/profile/sianedavies#!/vizhome/Customer_reviews_viz/reviewcategorytotals)
3. through sample /limited experimentation, investigate whether processing / cleaning the review text might lead to a more accurate sentiment calculation
4. textblob has an alternative, naive bayes sentiment analyser that is trained on movie reviews - do you think this could be more accurate? what features would you choose to include if training a sentiment analysis model ? 
5. could there be advantages to utilising spacy+textblob instead? why? how would you identify a sentiment tool better suited to this data set?
6. install the needed packages and apply a second sentiment analysis method, end to end to evaluate the accuracy of the first approach
7. summarise what you have learnt in a .md file to accompany your notebook or annotations /images in the notebook itself 
8. tidy up your code as much as possible, consider modularising any elements of what you have done for re-usability and efficiency

--------

### When you are ready submit your lab via the student portal (github /google colab url)




