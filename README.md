
#Screening Swift

The following exercise is designed to showcase your problem solving, solution design, and programming skills.

Try to explain each step you are going to take to your interviewer. Do not miss anything, the more you explain about what you are doing, the better.

The solution has to be written 100% in Swift oriented towards iOS mobile devices.
You can use any technology, library or framework that you prefer.

###User story:
As a user, I want to see the list of available universities in the following endpoint: http://universities.hipolabs.com/search?country=Ecuador
The information I want to appear in the list is the following:
  - College name
  - University website

###Acceptance Criteria:
  - Each item on the list must contain the name and website of the university
  - I want to be able to scroll over the content and when I touch an item, I want to be able to see the detail of each one:
      + The details of each item must be in this order: university name, country name, country code, website, province. (In the case that the province is null from the API, omit that field). Each field must have its header. (see mock)
  - In case of not having internet connection or the API is unreachable, I want to see an error explaining the problem

##Extra:
###User story:
As a user I want to be able to filter the information for each of the available fields.
The filter must be a modal that overlaps the entire screen. (see mock)

###Acceptance Criteria:
- The information entered in the fields of the modal must correspond to the information shown in the list before the modal.
- As a user I want to know if I am seeing filtered information or not (add an indicator)

[See Mock here](https://marvelapp.com/prototype/69ejfhe/screen/82628786) 
