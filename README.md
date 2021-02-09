# Petlove Subscription Churn Analysis

## Table of contents
* [General info](#general-info)
* [Logical explanation](#logical-explanation)
* [Technologies](#technologies)

## General info
This document is a simple explanation of how the presentation was designed.

## Logical explanation
1. I've managed to create a table and import the [csv] file to a database called "testes" in **MySQL Workbench**, using the [DDL - SUBSCRIBERS.sql];

2. Then I got my first great question: Why can't I reproduce the simple sample [graph]?

   Thinking about this I undertood that the most important was how I would analyse and suggest solutions, and not how fast or precisely I can reproduce the graph presented.

3. With that in mind I focused on picking points inside the base that I could search for interesting insights (even if my data was totally random and generic):

   Then I created two graphs with this [query] showing the **relative cancellation per respective month** and the **relative cancellation compared with the entire base**.

   Is there any city, state or region with way more cancellations? That could bring us to understand if we need to listen better to their pain. [Deleted per Region.sql]

   What are the average age of our users? If they are too "experienced", we could review our presentation of subscription for more understanding, or if they are too young maybe we are not making clear the advantages of keeping subscribed. [Customer Age.sql]

   How do they find us in first place? Maybe some marketing source could be opening doors to us with a lot of "next", "agree", "subscribe" and less of reading. [Marketing Source.sql]

   And finally, how much does this hurt our cashin? How much would we get if they simply stayed with us for the average time our historic users stay? [Average Ticket.sql]

4. At this point I was preparing a special [Google Sheet] with the charts to be presented at a final presentation in [Google Slides].

5. And for the last slides I commented some points in presentation and at the end I put some more information that could be usefull on this scenario and what usually we would get from the data already analysed.

## Technologies
Project is created with:
* MySQL version: 8.0
* Google Sheets
* Google Slides
	
[csv]: https://github.com/petlove/vagas/blob/master/data/bi-analysis/data-test-analytics.csv
[DDL - SUBSCRIBERS.sql]: https://github.com/JoaoP-Camargo/bau/blob/main/DDL%20-%20SUBSCRIBERS.sql
[graph]: https://github.com/petlove/vagas/blob/master/data/bi-analysis/materials/churn.png
[Deleted per Region.sql]: https://github.com/JoaoP-Camargo/bau/blob/main/Deleted%20per%20Region.sql
[Customer Age.sql]: https://github.com/JoaoP-Camargo/bau/blob/main/Customer%20Age.sql
[Marketing Source.sql]: https://github.com/JoaoP-Camargo/bau/blob/main/Marketing%20Source.sql
[Average Ticket.sql]: https://github.com/JoaoP-Camargo/bau/blob/main/Average%20Ticket.sql
[query]: https://github.com/JoaoP-Camargo/bau/blob/main/Base%20Churn%20%2B%20Accumulative%20Churn.sql
[Google Sheet]: https://docs.google.com/spreadsheets/d/1ubb6sd_deissq0HcPGdQKCBFy7tjU4l3xaVGTBsofxc/edit#gid=1410947794
[Google Slides]: https://docs.google.com/presentation/d/1lulTMYHdXinVXKvPg93_lpz4ZN92CQoIT5ZmIUbne6Q/edit#slide=id.gba34405f55_0_574
