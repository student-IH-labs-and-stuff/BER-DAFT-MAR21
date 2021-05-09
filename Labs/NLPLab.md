## NLP Lab 

The purpose of todays lab is to calculate and validate the customer sentiment (polarity) based on reviews of purchased womens clothing, as an introduction to using NLP techniques on text data and retrieving actionable data insights per department / division at the womens clothing company.  


> This lab has been designed to be completed at either **Starter level** or **Stretch level** - in order to accomodate different technical / time / motivation levels in the class. **Starter** - is the minimum required deliverable for today's lab, so you should complete the steps below as directed before submitting the url to your notebook via the student portal. **Stretch** will take you longer and the actions you will take are prompted, rather than prescriptive.  



You will follow the instructions and concepts you saw in class today to:
+ retrieve the data 
+ sample a few customer reviews using textblob
+ use a function, for loop or dictionary comprehension to apply sentiment analysis to the whole data set
+ visualise the sentiment by department / division
*(optional- Stretch)*
+ visualise to validate the sentiment analysis
+ apply another sentiment analyser
+ identify and evaluate the differences between each approach

#### Each step below is given a description of what to do and some are accompanied by prompt images to confirm you are on the right track 

### Starter steps 
----
1. retrieve the data from this [kaggle link](https://www.kaggle.com/nicapotato/womens-ecommerce-clothing-reviews)
2. install texblob onto your conda environment
3. launch jupyter notebook in the same environment, and import pandas, matplotlib/seaborn and textblob 
4. read the data into a dataframe with pandas
5. filter the data frame to the relevant subset of columns shown in the below image 
7. using EDA /description statistics / simple charts, explore and familiarise yourself with the data at your own pace - clarify what each column means and what cleaning steps might potentially be needed
8.  

---- 

### Stretch guidance (optional follow on activities)
1. how accurate is the sentiment polarity calculated on this data set? how can you tell ? 
2. what are the most useful ways to visualise the sentiment polarity against the other data in the reviews data set? (hint: tableau or seaborn, exploratory data visualisation) 
3. through sample /limited experimentation, investigate whether processing / cleaning the review text might lead to a more accurate sentiment calculation
4. textblob has an alternative, naive bayes sentiment analyser that is trained on movie reviews - do you think this could be more accurate? what features would you choose to include if training a sentiment analysis model ? 
5. could there be advantages to utilising spacy+textblob instead? why? how would you identify a sentiment tool better suited to this data set?
6. install the needed packages and apply a second sentiment analysis method, end to end to evaluate the accuracy of the first approach
7. summarise what you have learnt in a .md file to accompany your notebook or annotations /images in the notebook itself 
8. tidy up your code as much as possible, consider modularising any elements of what you have done for re-usability and efficiency

--------

### When you are ready submit your lab via the student portal (github /google collab url)



