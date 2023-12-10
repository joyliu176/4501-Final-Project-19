
CREATE TABLE complaints (
	unique_key SERIAL NOT NULL, 
	created_date TIMESTAMP WITHOUT TIME ZONE, 
	complaint_type VARCHAR, 
	zipcode INTEGER, 
	geometry geometry(POINT,4326), 
	PRIMARY KEY (unique_key)
)

;

CREATE TABLE trees (
	tree_id SERIAL NOT NULL, 
	species VARCHAR, 
	health VARCHAR, 
	status VARCHAR, 
	zipcode INTEGER, 
	geometry geometry(POINT,4326), 
	PRIMARY KEY (tree_id)
)

;

CREATE TABLE zillows (
	zipcode SERIAL NOT NULL, 
	date TIMESTAMP WITHOUT TIME ZONE, 
	value FLOAT, 
	PRIMARY KEY (zipcode)
)

;

CREATE TABLE zipcodes (
	zipcode SERIAL NOT NULL, 
	geometry geometry(POLYGON,4326), 
	PRIMARY KEY (zipcode)
)

;
