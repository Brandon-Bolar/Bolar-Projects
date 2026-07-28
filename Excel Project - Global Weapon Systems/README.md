# Global Weapon Systems Excel Project

## Introduction

As a job seeker, I wanted to showcase skills relevant to Excel applications. I investigated the global weapons systems database from Kaggle. I searched for relevant data about the spending trends of different weapon manufacturers and countries. This will present that data in an easily to discern format here in this Excel file.

### The final project is in [Excel Project - Global Weapon Systems](https://github.com/Brandon-Bolar/Bolar-Projects/blob/main/Excel%20Project%20-%20Global%20Weapon%20Systems/Excel%20Project%20-%20Global%20Weapon%20Systems.xlsx)

## Excel Skills Used
I realize that Excel is a powerful tool and can visually showcase data to better understand the global weapons market. Here's what I used to present the original data set.

- Power Query
- Pivot Tables
- Charts
- Formulas
- LOOKUPs
- Data Validation

## Dashboard 

 ![Dashboard_Top](https://i.imgur.com/XVL622T.png)
 ![Dashboard_Central](https://i.imgur.com/ENXiWeL.png)

- Pivot Tables
    - Pivot tables allow the quick classification and exhibition of data. Here, I broke the data down by country, manufacturer, or spending habits. 
    ![Pivot Table Example](https://i.imgur.com/kBAn4lv.png)
- Charts
    - Trends can be quickly identified from the data. Certain countries spend more for weapon systems than other countries.     
    ![Pivot Chart Example](https://i.imgur.com/h3HnP6c.png)
- Data Validation
    - Data Validation was utilized for cleaning incorrect or inconsistent entries while enhancing the usability of the data for the dashboard.

## Questions Analyzed?
To extrapolate information in the original data, I asked these questions:

1. Which Country Spends The Most On Weapon Systems?
2. Which Country Is Paying The Most Per Manufacturer?
3. What Are The Most Expensive Weapon Systems Per Weight (kg)?

# Which Country Spends The Most On Weapon Systems?
Skill: Pivot Tables, Formulas, World Map, Slicers
![Spending Example](Screenshot_150501)

# Which Country Is Paying The Most Per Manufacturer?
Skill: Pivot Tables, Slicers
![Sum and Average Cost](Screenshot_151405)

# What Are The Most Expensive Weapon Systems Per Weight (kg)?
Skill: Power Query, Formulas
- Power Query   
    - Load, Transform, Extract Original Data
![ETL](https://i.imgur.com/SWbk6tN.png)

1. Extract
   - First, I extracted the data using Power Query.
2. Transform
   - Then, I transformed many numbers from text to Int64
   - Next, I applied a formula for the cost of a unit system per weight (kg)
3. Load
    -Finally, I loaded both transformed queries into the workbook, setting the foundation for my subsequent analysis.

## Additional Analysis
Skill: XLOOKUP, VLOOKUP
![Spending Brackets](https://i.imgur.com/RP0GKFN.png)

## Insights
- Algeria, Slovakia, and Zimbabwe dominate globally in terms of the highest government spending per average individual unit weapon systems. 
- The lowest active/present weapon systems overall cost belongs to endeavors from joint Russia/Iran manufacturing.
- USA and Russia individually have the most weapon manufacturers globally. This makes sense as both have large domestic and export weapon programs.
- Anti-air and anti-tank missile systems cost the most per weight (kg) to produce by all global manufacturers. Anti-air and anti-tank systems require costly avionics and detection systems to be considered viable.

# Conclusion
I sought to better understand the relationship between weapon systems and their manufacturers by using the provided Excel tools. To start, I used a Global Weapons System data set from the database site: Kaggle.com. I leveraged skills such as Power Query, LOOKUPs, formulas, pivot tables, and charts. I discovered some insightful trends in the data that I sought to make understandable in detail and through visualization.  

Hopefully, this project serves as a guide for both companies and professionals into the world of competitive global defense expenditures.

## Credits
[Excel for Data Analytics - Full Course for Beginners](https://www.youtube.com/watch?v=pCJ15nGFgVg&t=28223s)
[Global Military Arsenal Dataset: Weapons Systems](https://www.kaggle.com/datasets/maulikgajera/global-military-arsenal-dataset-weapons-systems)
