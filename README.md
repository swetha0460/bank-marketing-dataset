# bank-marketing-dataset
The data is related with direct marketing campaigns (phone calls) of a Portuguese banking institution. To find if the product (bank term deposit) would be (&amp;#39;yes&amp;#39;) or not (&amp;#39;no&amp;#39;) subscribed.
Dataset
Bank marketing dataset from Kaggle.
(https://www.kaggle.com/datasets/henriqueyamahata/bank-
marketing?utm_source=chatgpt.com)
(Dataset info available in the Kaggle page)
The data is related with direct marketing campaigns (phone calls) of a Portuguese
banking institution. To find if the product (bank term deposit) would be (&#39;yes&#39;) or not
(&#39;no&#39;) subscribed.

Objectives
1. To find the total subscription rate
2. To find the best age group of customers to be contacted for maximum
conversion rate.
3. To find the effect on various segments like job and its effect on
subscription rate.
4. To find whether to include defaulters for campaign
5. To find whether to contact more people from last campaign for maximum
conversion.
6. To find the optimum no.of times a customer should be contacted for
conversion.

Tools used

1. Python (used for preprocessing)
 Dropped unwanted columns
 Duplicates removed
 Checked for missing values
 Age filtering to remove outliers

 Id column added as primary key

2. SQL (used to find hidden info from the dataset)
 total number of customers
 subscription rate of term deposits
 contacts by channel and their conversion rate
 conversion rate wrt to age category
 contacts by marital status
 conversion rate wrt to marital status
 conversion rate wrt to job
 conversion rate wrt to education
 convertion rate wrt to no.of times called in campaign
 convertion rate wrt to default
 wrt to previous outcome

3. Power BI (for visualization)
 Major KPIs-total customers, total subscriptions, subscription rate,
average age, poutcome success rate (poutcome means outcome of
previous marketing campaign)
 Stacked column chart used to see subscription rate by age
 Area chart used to plot subscription rate by marital status
 Pie chart used to plot subscription rate by job
 Stacked bar chart used to plot subscriptions wrt defaulters
 Stacked column chart used to plot subscriptions rate wrt poutcome
 Clusterd bar chart used to plot subscription rate wrt no.of times
contacted.
 Slicers used based on months contacted
 Treemap used to plot subscriptions wrt mode of contact

Conclusion
 Retired people and People below 20 Years of age (most likely to be handled
by parents in the name of children) are more likely to subscribe.
 Due to insufficient nature of data on marital status (mostly marked as
unknown), its better not to give much importance to that factor or try to collect
more info on their marital status.
 Data shows that non-defaulters (loan defaukters) are likely to subscribe.

 Contact more people who successfully got converted in the last campaign for
more conversion. It could mean that people were benefitted from the last
campaign and ready to subscribe again.
 The more times called the less likely they are to subscribe because it could be
annoying for most people.
All the objectives are covered in the visualization and following it could result in
maximum conversion in less time.
