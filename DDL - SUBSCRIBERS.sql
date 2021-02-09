DROP TABLE IF EXISTS testes.subscribers;

CREATE TABLE testes.subscribers (
	id						VARCHAR(200)						
	,created_at				TIMESTAMP   		
	,updated_at				TIMESTAMP 				 
	,deleted_at				TIMESTAMP 		  	
	,name_hash				VARCHAR(200)   						
	,email_hash				VARCHAR(200)	   					
	,address_hash			VARCHAR(200)   						
	,birth_date				TIMESTAMP  		
	,status					VARCHAR(200)  						
	,version				VARCHAR(200)   						
	,city					VARCHAR(200)   						
	,state					VARCHAR(200)   						
	,neighborhood			VARCHAR(200)   						
	,last_date_purchase		TIMESTAMP   		
	,average_ticket			INTEGER   							
	,num_items				SMALLINT   							
	,all_revenue			INTEGER   							
	,recency				SMALLINT   							
	,marketing_source    	VARCHAR(200)       	 				
)
;
ALTER TABLE testes.subscribers ADD CONSTRAINT subscribers_pk PRIMARY KEY ( id );

INSERT INTO testes.subscribers VALUES (
	'Not Identified'
	,cast('1970-01-01 00:00:01.000000' as datetime)
	,cast('1970-01-01 00:00:01.000000' as datetime)
	,cast('1970-01-01 00:00:01.000000' as datetime)
	,'Not Identified'
	,'Not Identified'
	,'Not Identified'
	,cast('1970-01-01 00:00:01.000000' as datetime)
	,'Not Identified'
	,'Not Identified'
	,'Not Identified'
	,'Not Identified'
	,'Not Identified'
	,cast('1970-01-01 00:00:01.000000' as datetime)
	,-1
	,-1
	,-1
	,-1
	,'Not Identified'
);	

LOAD DATA LOCAL INFILE 'C:\\Users\\danie\\Documents\\Petlove_Test\\data-test-analytics.csv' 
INTO TABLE testes.subscribers 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;