![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | Predicting Claim Amount with ML Linear Regression

## Introduction

For this lab, we still keep using the [marketing_customer_analysis.csv file](marketing_customer_analysis.csv) - the US car insurance data set. You should be able to pick up where you left off in the previous rounds of customer behaviour analysis. However this time we will look to apply a linear regression machine learning model 

Review the previous rounds and follow the steps as shown in previous lectures.

## 01 - Problem (case study)
Familiarise yourself with Data Descriptions and the Goal.

## 02 - Getting Data
Read the .csv file into python

## 03 - Cleaning/Wrangling/EDA
Change headers names.
Deal with NaN values, replace with appropriate method. 

split categorical Features and Numerical Features.

Explore visually both sets of features, to identify next steps.

Look at potential multicollinearity using a correlation matrix or other approach. 

## 04 - Pre-Processing Data
Dealing with outliers.
Normalization - ie use chosen scaler to transform selected columns into normal distribution as needed for linear regression model. Propose: MinMax scaler on 'effective_to_date' and standard scaler on numerical columns.

Encoding Categorical Data fields using OHE.

Bring categorical and numerical columns back together using pd.concat.

Define X and y, the y value you are seeking to predict is claim amount.

Splitting into train set and test dataset using random state, eg 80%:20% .

## 05 - Modeling
Apply linear regression model from sklearn.linear_model.

Fit over your train data and predict against X test. 

## 06 - Model Validation
You should gather appropriate metrics to evaluate model accuracy over y_test- such as : 
R2.
MSE.
RMSE.
MAE.

## 07 - Reporting
Present results inside your notebook with appropriate annotation describing the accuracy of the model and business insight gained.


### data definitions for handy reference :

Unnamed: Index
customer: Customer ID
state: US State
customer_lifetime_value: CLV is the client economic value for a company during all their relationship
response: Response to marketing calls (customer engagement)
coverage: Customer coverage type
education: Customer education level
effective_to_date: Effective to date
employmentstatus: Customer employment status
gender: Customer gender
income: Customer income
location_code: Customer living zone
marital_status: Customer marital status
monthly_premium_auto: Monthly premium
months_since_last_claim: Last customer claim
months_since_policy_inception: Policy Inception
number_of_open_complaints: Open claims
number_of_policies: Number policies
policy_type: Policy type
policy: Policy
renew_offer_type: Renew
sales_channel: Sales channel (customer-company first contact)
total_claim_amount: Claims amount
vehicle_class: Vehicle class
vehicle_size: Vehicle size
vehicle_type: Vehicle type
