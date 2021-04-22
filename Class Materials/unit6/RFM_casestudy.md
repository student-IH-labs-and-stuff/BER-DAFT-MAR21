
## Case Study: Proof of Concept - RFM Customer Segmentation for shaping Marketing strategy 

### Scenario and Objectives

You are a newly hired BI consultant assigned to work with the market insight team at a medium sized online wholesaler. You are having trouble getting access to your client's data however, due to some extremely slow IT security processes, there are two days left of your assignment and you are getting nervous that the client will refuse to pay for your time unless you can show some value - frustratingly the full time employees around you seem too busy to take an interest in you either, wont ask for your help and you are getting annoyed with doing nothing every day. 

You reach out to the consulting lead to ask for help; unfortunately she informs you that due to a scheduling issue she cant reassign you to another client until next week- she encourages you to 'think outside the box' and suggests a **proof of concept dashboard** which will be built on dummy data, as a way of keeping busy, showing progress and starting conversations with the team. You have a brainstorm and think to identify some relevant sample retail data online that could be used to build some reports, demonstrate visual best practices and basic statistical techniques. Most importantly this will be presented at the next team meeting as an example of how business intelligence can help the market insight team define future tailored marketing campaigns and other strategic business opportunities. 

You find some e-commerce data on kaggle, covering 2010 and 2011, with which you hope to perform an RFM analysis to gather insights about customer segments and ultimately, a better understanding of customer purchasing behaviour/loyalty. Based on your findings the marketing team will plan the campaigns for 2012, and you plan to also put together a dashboard so that other members of the team can play with the data and discover their own insights. 


## What is RFM? 
* RFM segmentation allows marketers to target specific clusters of customers with communications that are much more relevant for their particular behavior – and thus generate much higher rates of response, plus increased loyalty and customer lifetime value. 
* Like other segmentation methods, RFM segmentation is a powerful way to identify groups of customers for special treatment
* [this article](https://clevertap.com/blog/rfm-analysis/) walks through in a visual way how this can be achieved using third party software, and we could also use sophisticated techniques like KNN but in our case we will rely on percentiles and logical statements. 

**Recency** How much time has elapsed since a customer’s last activity or transaction with the brand?
- Per Customer : No of weeks between their latest inv date and last inv date (in system)
**Frequency** How often has a customer transacted or interacted with the brand during a particular period of time? 
- Per Customer : How many invoices have they had? How many items on those invoices ? 
**Monetary** Also referred to as “monetary value,” this factor reflects how much a customer has spent with the brand during a particular period of time. 
- Per Customer : What’s the total amount they have spent?

![alt text](https://github.com/student-IH-labs-and-stuff/BER-DAFT-MAR21/blob/main/Class%20Materials/unit6/quantiles.png "RFM using percentiles")

### Your Tasks 

* Your first task will be to collect the data [from kaggle](https://www.kaggle.com/carrie1/ecommerce-data) and download it as a csv. 
* You will eventually need to explain the data column definitions to the market insight team (as the data likely looks different to their own) so it will be worth making a note of what each column contains, the data types, potential missing values etc when collecting the data from kaggle.
* By exploring the data, dentify which fields from the 8 available columns you will actually need to perform your RFM analysis - see explanation above and other resources you will find online which explain the concept and various methods to achieve it
* Perform an  isnull check on the data and remove /filter out as many null records as possible, taking into account what you want to find out about the customers (as this is a proof of concept you can be more aggressive with filtering and less transparent than you would in reality with the customer's data.  
* Using LoDs, tag each customer with their most recent purchase date, the total they have spent and the no of times they have bought something
* Once the customers are tagged you can split them into RFM tiers (1-4) using percentiles.
* Then, with an IF ELSE calculated field, define customers into behavioural segments according to their tier combinations. Here are some examples you can use for those segments but you are free to identify your own segments:
 Best customers (111)
 Lapsed valuable customers (4_1, 3_1)
 Low spend active loyal customers (113,114)
 High spend new customers (141,142) 
 Churned top customers (411, 412, 421 and 422)
 
* Develop a presentable, interactive Tableau dashboard which will allow the team to visualise and explore as many aspects of RFM as possible/  would be interesting to the team, with the limited data available. Some examples:

how many customers per tier combination ;  how many customers in each behavioural segment ; average no of weeks since last order for each behavioural segment; average monthly spend of best customers; spread of no of purchases per customer; cohort analysis by month to indicate loyalty ; other... 


### Tips on the data source 

+ Data contains returns as well as purchases (look for a negative unit price)
+ The data is for a limited amount of time 2010 - 2011 
+ Some null values - on dates, customer_ids, prices and qty 
+ Transactional level detail - multiple orders per customer and within one order, multiple items (Description) are purchased - so has multiple invoices on the same order
+ Contains only one date (invoice date) which you have to take as purchase date (but be careful of negative / null dates)



