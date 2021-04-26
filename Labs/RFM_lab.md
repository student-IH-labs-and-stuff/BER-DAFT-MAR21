## RFM lab 

in this lab you will follow the steps and concepts you saw in class today to
+ tag each customer with # weeks since last purchase , total customer worth and purchase frequency 
+ tag each customer with tier 1-4 for RFM 
+ tag each customer with RFM ### 
+ define customer behaviour segments 
+ create some simple views which summarise information per segment/ tier (eg count of customers) or allow a deep dive into customer aggregated information by RFM tiers and segments, or views which enable focus on either R,F or M breakdown of the customer base

#### Each step below is given a description of what to do and accompanied by a [helpful screenshot in this folder](https://github.com/student-IH-labs-and-stuff/BER-DAFT-MAR21/tree/main/Labs/RFMscreenshots), which you can use where needed. 

### Steps 
----
1. you should already have the data from todays lesson, but if not download the csv from kaggle following the link provided in the case study 
2. explore and familiarise yourself with the data at your own pace - identify the columns you will need to keep and any you can drop or hide
3.  assert data source filters on the data source connection page for Unit Price>0 , Quantity>0 
4. create a view (worksheet) for checking dimension nulls - utilising ISNULL calculated fields on Customer ID, Description, Invoice Date, Invoice Number to confirm how many nulls are in the data, as a proportion of all the data - hint: you will need a stacked bar chart and quick table calculation percentage of total 
5. Recency: 
- first, use a FIXED Lod to create a calculated field which is the maximum date of the datasource (hint this will be the same for all records),  
- second, use another FIXED Lod to tag each customer id with their latest invoice date , 
- third, create a DATEDIFF calculation inside an LOD to tag each customer with the number of weeks since their last purchase, using the max date of the data set as the benchmark and the date part 'week' 
6. Frequency: use a FIXED LoD to tag each customer with how many purchases they have made. Suggestion: use count of distinct invoice id
7. Monetary Value: 
- create a calculated field which multiples quantity by price to give a value
- in another calculated field, use a FIXED LoD to tag each customer with their worth based on a that value field.
8. create an additional calculated field- the count of customer ids (hint: distinct)- this will be useful for any views you build
9. within a calculated field, using percentiles (0.25, 0.5, 0.75, 1) and and IF ELSEIF statement, divide the customers into R, F and M tiers 1-4 or 4-1, as appropriate. You should end up with 3 new dimension (blue) columns per customer - test these out in a view with a subset of customer ids 
10. within a calculated field combine the three tiers into one string ie '221' and test in the view you created in the previous step
11. finally, create a last calculated field which, with IF-ELSEIF-ELSE logic and the RFM tier, combinations, prescribes a number of interesting customer segments. You can conduct research on commonly used RFM definitions or develop your own. 
12.  you are ready to start building your views! Think about what you would want to show the market insight team and what is simple to understand. You can turn to [this dashboard](https://public.tableau.com/profile/sianedavies#!/vizhome/RFManalysis_16184195515190/RFMDashboard-ECommerceRetailDS) for inspiration but any view that uses your new segments or the tiers you have created to explore patterns in the customer behaviour are valid! 

---- 

When you are ready, save your workbook with the separate views showing as tabs to Tableau public and submit your lab via the student portal (tableau public url)



