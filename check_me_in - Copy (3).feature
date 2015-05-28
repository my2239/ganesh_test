@ please refer shared drive file56 for more details
Feature: Search for organizations

Scenario: Search for organizations by name
Given I know the name of the organization I wish to search for
And I am logged in to CTRP PO application
And I am on the search organizations screen
When I provide the full or partial name of the organization I wish to search for
And I submit my search request
Then the system should display all organizations that contain the name
1.	If organization aliases are a feature for the New PO and we search on a Org name that was previously nullified will this bring up the New Org name even if the new org name does not reflect the org name being searched on?
2.	Will there be a way to choose to not select search criteria by alias?
3.	Will there be a Way to search by only alias?

Scenario: Search for organizations by CTEP ID
Given I know the CTEP ID of the organization I wish to search for
And I am logged in to CTRP PO application
And I am on the search organizations screen
When I provide the CTEP ID of the organization I wish to search for
And I submit my search request
Then the system should display all organizations that exactly match the CTEP ID
1.	For international organizations the CTEP ID is often numeric only.  When I search by ctep id I only want an exact match.  Curently if I search for by ctep id 12345 I may get the results 012345, 212345, 312345 etc.
2.	Is there a way to request exact match
3.	Is there a “wildcard feature” to bring up multiple possibilities i.e NY% NY013, NY014, NY250 etc. 
4.	Will we be able to search on inactive ctep id
5.	Will we be able to search on suspended ctep id
6.	Will we be able to search on pending ctep id
7.	Will be be able to search on ctep Id that was nullified to bring up the org nullified into?

Scenario: Search for organizations by PO ID
Given I know the PO ID of the organization I wish to search for
And I am logged in to CTRP PO application
And I am on the search organizations screen
When I provide the PO ID of the organization I wish to search for
And I submit my search request
Then the system should display all organizations that match the PO ID
1.	Is there a way to request exact match
2.	Is there a “wildcard feature” to bring up multiple possibilities
Scenario: Search for organizations by Family Name
Given I know the Family name to which the organization I wish to search for belongs to
And I am logged in to CTRP PO application
And I am on the search organizations screen
When I provide the full or partial Family name of the organization I wish to search for
And I submit my search request
Then the system should display all organizations that are returned from Search Organization by Family Name
If I provide only a partial name do I need to use a wild card?
 
Scenario Outline: Search Organizations by Family Name
Given that <Family_name> is the name of an existing family
And <Family_name> is associated with <organization_name>
And I know the <Family name> I wish to search for
And I am logged in to CTRP PO application
And I am on the search organizations screen
When I provide the <Family name> of the organization I wish to search for
And I submit my search request
Then the system should display all <organization_name> associated with <Family Name>

Examples:
|family_name				|organization_name			|functionaltype	|family_id	|organization_id	|
|Dana-Farber/Harvard Cancer Center	|Beth Israel Deaconess Medical Center	|ORGANIZATIONAL	|16473888	|120807		|
|Dana-Farber/Harvard Cancer Center	|Brigham and Women's Hospital		|ORGANIZATIONAL	|16473888	|120778		|
|Dana-Farber/Harvard Cancer Center	|Children's Hospital Boston		|ORGANIZATIONAL	|16473888	|120894		|
|Dana-Farber/Harvard Cancer Center	|Dana-Farber Cancer Institute		|ORGANIZATIONAL	|16473888	|120748		|
|Dana-Farber/Harvard Cancer Center	|Dana-Farber Harvard Cancer Center	|ORGANIZATIONAL	|16473888	|3456936		|
|Dana-Farber/Harvard Cancer Center	|Mass General/North Shore Cancer Center|ORGANIZATIONAL	|16473888	|9594250		|
|Dana-Farber/Harvard Cancer Center	|Massachusetts General Hospital	|ORGANIZATIONAL	|16473888	|123441		|

Scenario: Search for organizations by city
Given I know the name of the city I wish to search for
And I am logged in to CTRP PO application
And I am on the search organizations screen
When I provide the full or partial city of the organization I wish to search for
And I submit my search request
Then the system should display all organizations that contain the city
1.	Will this be case sensitive?
2.	Can I search by city without adding a country code or state?
3.	Can I search by partial name (i.e Albuquerque search only on albuq) etc. this is for international and United States




Scenario: Search for organizations by state
Given I know the name of the state I wish to search for
And I am logged in to CTRP PO application
And I am on the search organizations screen
When I provide the full or partial state of the organization I wish to search for
And I do not modify the U.S. country default
And I submit my search request
Then the system should display all organizations that contain the state in the U.S.
Will the state be spelled out or abbreviated?

Scenario: Search for organizations by country
Given I know the name of the country I wish to search for
And I am logged in to CTRP PO application
And I am on the search organizations screen
When I provide the full or partial country of the organization I wish to search for
And I submit my search request
Then the system should display all organizations that contain the country
1.	Will a drop down list be provided or is this free text?
2.	I would like to request it be a drop down list like it is in the current version on PO
3.	Will the country list all countries or only ones currently participating on a trial?

Scenario: Search for organizations by zip code
Given I know the name of the zip code I wish to search for
And I am logged in to CTRP PO application
And I am on the search organizations screen
When I provide the full zip code of the organization I wish to search for
And I submit my search request
Then the system should display all organizations that contain the zip code

Scenario: Search for organizations by phone number
Given I know the phone number I wish to search for
And I am logged in to CTRP PO application
And I am on the search organizations screen
When I provide the phone number of the organization I wish to search for
And I submit my search request
Then the system should display all organizations that contain the phone number
1.	If we are able to search by phone number will the format be required for phone search?  i.e 555-555-5555 or can the digits just be typed in(5555555555?
2.	Will the hyphen( or determined phone format) be auto populated as the number is typed in?

Scenario: Search for organizations by <organization_type>
Given I know the name of the <organization_type> I wish to search for
And I am logged in to CTRP PO application
And I am on the search organizations screen
When I select the <organization_type> of the organization I wish to search for
And I submit my search request
Then the system should display all organizations that have the <organzation_type>

|organization_type    |
|lead organization    |
|sponsor organization |
|participating site   |

1.	Is this considered an organization type?
2.	Would these be the functioning roles a organization may have on a trial?
3.	I would like to know at the org level what role it has on a trial but not necessarily one we need to search on

Scenario: Search for organizations with multiple parameters
Given I know multiple parameters of the organization I wish to search for
And I am logged in to CTRP PO application
And I am on the search organizations screen
When I provide the parameters of the organization I wish to search for
And I submit my search request
Then the system should display all organizations that contain all of the entered parameters

Scenario: Search for organizations by curator date
Given I know the name of the curator date I wish to search for
And I am logged in to CTRP PO application
And I am on the search organizations screen
When I provide the curator date of the organization I wish to search for
And I submit my search request
Then the system should display all organizations that contain the curator date
1.	Is there a date format? Will this be provided?

Scenario: Search for organizations by curator name
Given I know the name of the curator name I wish to search for
And I am logged in to CTRP PO application
And I am on the search organizations screen
When I provide the curator name of the organization I wish to search for
And I submit my search request
Then the system should display all organizations that contain the curator name
1.	Will I need to know the full name?
2.	Will the curator full name be used or is it their userid name?
