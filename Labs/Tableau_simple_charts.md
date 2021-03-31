
# Lab | Tableau Charts - Simply answering questions with charts

Build the following charts in tableau and publish them to your tableau public account (or upload the charts to your github repo as images in a readme) in order to submit the url via the Student Portal. Each task requires you to build a single tableau visualisation (chart or viz) which enables the end user to easily answer the given question. For each chart you should consider data visualisation best practices. 

Reminder : we are looking for individual views or charts on each task, not dashboards. 

## Challenge 1 

Using the data set [profitability.xlsx](profitability.xlsx) 
and Tableau Desktop or Tableau Public, create the following charts to visualise and answer the following simple questions: 

(Ensure each chart has the appropriate fit, mark type, title, axis labels and legend.) 

1) What company made the most **per second** in 2016? and which industry was that in? Which industry appears most often in the **top 5**? suggestion - use a horizontal bar plot
2) Is there any discernible relationship between the **Fortune 500 Rank** of a company and its **Net income** in 2016? suggestion -Use a scatter plot
3) In our data set, what does the breakdown (/composition) of the number of companies per industry look like? suggestion - Use a text table, packed bubble or treemap to display this sort of information
4) BONUS : Add a url action on the menu select to go from any of these charts to https://fortune.com/company/<Company> using the selected company name eg https://fortune.com/company/apple/ Hint : you may need to use a REPLACE function in a calculated field on the Company name, to replace spaces and special characters in company names for your action to work. Also, dont worry if you start getting a 404 error - Fortune will quickly block suspected bots! You can also try wikipedia or find another website which hosts a similar company name search. 

## Challenge 2 

Using the data set [laureate.csv](laureate.csv) 
and Tableau Desktop or Tableau Public, create the following charts to visualise and answer the following simple questions: 

(Ensure each chart has the appropriate fit, mark type, title, axis labels/legend or map layers.) 

1) Which country has produced the most nobel laureates up to 2016 (hint: **country of birth**)? suggestion -Use a map (note, some countries have changed names over this historical period)
2) Whats the % of male to female nobel laureates up to 2016? suggestion -Use a text table or pie chart
3) For those laureates for whom we do know the **City** they lived in at the time of the award, what trend do you notice about the city home to physics and medicine nobel prize winners compared to the city home of chemistry nobel prize winners? Use a stacked bar chart and experiment with the sort order to discover this insight- or display the 3 bar charts next to eachother in one view and use the sort icon on the axis to explore the data.
4) Bonus: How many award **motivations** can we find in our data set that cite analysis work? (create a calculated field, using the substring 'analy' with CONTAINS to look for either analysis or analyses, analyze) and use this field as a dimension on your chart. suggestion -Use a bar chart, dont worry too much about the NULL values in Motivation. 


----- proprietary content of SED Training Ltd-------
