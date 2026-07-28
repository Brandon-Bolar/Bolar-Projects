# Global Weapon Systems Excel Project

## Introduction

As a job seeker, I wanted to showcase skills relevant for Excel applications. I investigated the global weapons systems database from Kaggle. I search for relevant data about the spending trends of different weapon manufactufuerers and countries. This will present that data in an easily to discern format here in this Excel file.

### The final project is in [Excel Project - Global Weapon Systems](https://github.com/Brandon-Bolar/Bolar-Projects/blob/main/Excel%20Project%20-%20Global%20Weapon%20Systems/Excel%20Project%20-%20Global%20Weapon%20Systems.xlsx)

## Excel Skills Used
I realize that Excel is a powerful tool and visually showcase data to better understand the golbal weaponms market. Here's what I used to resent the originbal data set.

- Power Query
- Pivot Tables
- Charts
- Formulas
- LOOKUPs
- Data Validation

## Dashboard 

 ![Dashboard_Top](Screenshot_152650)
 ![Dashboard_Central](Screenshot_150947)

- Pivot Tables
    - Pivot tables allow the quick classification and exhibition of data. Here, I broke the dat down by country, manufacturer, or spending habits. 
    ![Pivot Table Example](Screenshot_153225)
- Charts
    - Trends can be quickly idenified from the data. Certain countries spend more for weapon systems than other countries.     
    ![Pivot Chart Example](Screenshot_152910)
- Data Validation
    - Data Validation was utized for cleaning incorrect or inconsistent entries while enhancing the usability of the data for the dashboard.

## Questions Analized?
In order to extrapolate information in the oriniginal data, I asked these questions:

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
![ETL](Screenshot_151208)

    1. Extract
        - First, I extracted the data using power query.
    2. Transform
        - Then, I transformed many numbers from text to Int64
        - Next, I applied a formula for the cost of an unit syetem per weight (kg)
    3. Load
        -Finally, I loaded both transformed queries into the workbook, setting the foundation for my subsequent analysis.

## Additional Analysis
Skill: XLOOKUP, VLOOKUP
![Spending Brackets](Screenshot_150518)

## Insights
- Algeria, Slovakia, Zimbabwe dominiate globally on the highest government spending per average individual unit weapon systems. 
- The lowest active/present weapon systems overall cost belong to endevours from joint Russia/Iran manufacturing.
- USA and Russia individually have the most weapon manufacturers globally. This make sense as both have large domestic and for export weapon programs.
- Anti-air and Anti-tank missiles systems cost the most per wieght (kg) to produce by all global manufactuers. Anti-air and anti-tank systems require costly avionics and detection systems to be considered viable.

# Conclusion
I sought to better understand the relationship between weapon systems and their manufacturers by utilizing the Excels given tools. To start, I used a Global Weapons System data set from the database site: Kaggle.com. I leveraged skills such as Power Query, LOOKUPs, formulas, pivot tables, and charts. I discovered some insightful trends in the data that I sought made understandable in detail and visualization.  

Hopefully, this project serves a guide for both companies and professionals into the world of competetive global defense expendatures.

## Credits
[Excel for Data Analytics - Full Course for Beginners](https://www.youtube.com/watch?v=pCJ15nGFgVg&t=28223s)
[Global Military Arsenal Dataset: Weapons Systems](https://www.kaggle.com/datasets/maulikgajera/global-military-arsenal-dataset-weapons-systems)
