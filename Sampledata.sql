-- This script will create sample tables, one each for reviews and catagories along with respective sample insert statements.
-- The data can be used to understand the workings of the app.

-------CREATE SAMPLE TABLES------
CREATE TABLE REVIEW_ANALYZER_DB.PUBLIC.SAMPLE_INSURANCE_REVIEWS (
    ID VARCHAR(16777216),
    CUST_REVIEW VARCHAR(16777216)
); --- Sample  Review Table

CREATE TABLE REVIEW_ANALYZER_DB.PUBLIC.SAMPLE_INSURANCE_CATEGORIES (
    CATEGORY VARCHAR(16777216)
); --- Sample Categories Table




-------INSERT DATA INTO SAMPLE_INSURANCE_REVIEWS Table------
INSERT INTO REVIEW_ANALYZER_DB.PUBLIC.SAMPLE_INSURANCE_REVIEWS (ID, CUST_REVIEW) VALUES 
('REV1', 'I have been with this insurance company for several years now, and overall, my experience has been satisfactory. However, the claim process could be smoother. The customer service team was polite, but it took too long to get my claim approved. I appreciate the comprehensive policy coverage, though.'),
('REV2', 'I recently had to file a claim after an accident, and I was pleasantly surprised by how easy the process was. The customer service team was responsive and kept me updated throughout. I am happy with the service, and I will recommend them to my friends.'),
('REV3', 'This company offers decent coverage options, but the premium rates are too high compared to other providers. I also had a poor experience with their customer service. It took several calls to get a response, which is unacceptable.'),
('REV4', 'My policy renewal process was seamless. The representative I spoke to was very knowledgeable and explained the policy details clearly. I appreciate the transparency and professionalism of the team.'),
('REV5', 'I had a frustrating experience with this insurance provider. My claim was denied without a clear explanation, and I felt the process was unfair. The customer service representatives were not helpful and seemed uninterested in resolving my issue.'),
('REV6', 'The insurance policy I purchased was reasonably priced and offered the coverage I needed. I have not had to file a claim yet, but my interactions with customer service have been positive so far. I hope they maintain this level of service in the future.'),
('REV7', 'The claims process was unnecessarily complicated and time-consuming. It took weeks to get a resolution, and the communication from the company was poor. I expected better service given the premium rates I pay.'),
('REV8', 'I am very impressed with the customer service team. They were quick to respond to my queries and helped me understand my policy options. It is great to see a company that values its customers.'),
('REV9', 'While the coverage options are good, the policy terms are quite confusing. It took me some time to fully understand what is covered and what is not. The customer support team did help clarify things, but the documentation could be more user friendly.'),
('REV10', 'I recently had an accident and had to file a claim. The process was smooth, and I got my claim approved within a few days. I am satisfied with the service and the quick turnaround.');


-----INSERT DATA into SAMPLE_INSURANCE_CATEGORIES Table
INSERT INTO REVIEW_ANALYZER_DB.PUBLIC.SAMPLE_INSURANCE_CATEGORIES(CATEGORY) VALUES
('General Complaint'),
('General Praise'),
('Agent Support and Helpfulness'),
('Communication'),
('Knowledge and Expertise'),
('Policy Options and Coverage'),
('Customer Support'),
('Pricing and Value for Money'),
('Transparency and Communication'),
('Smooth Renewal Process'),
('Problem Resolution');



---- Grant Privileges for the Newly Created Tables
GRANT ALL PRIVILEGES ON TABLE REVIEW_ANALYZER_DB.PUBLIC.SAMPLE_INSURANCE_REVIEWS TO APPLICATION Review_Analyzer;
GRANT ALL PRIVILEGES ON TABLE REVIEW_ANALYZER_DB.PUBLIC.SAMPLE_INSURANCE_CATEGORIES TO APPLICATION Review_Analyzer;

--Note: For any new tables that you need to analyze, please create in REVIEW_ANALYZER_DB.PUBLIC, load and grant the above privileges