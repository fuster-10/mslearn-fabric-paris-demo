# Part 1: Analyze data in a data warehouse

### Estimated Duration: 60 minutes

In Microsoft Fabric, a data warehouse provides a relational database for large-scale analytics. Unlike the default read-only SQL endpoint for tables defined in a lakehouse, a data warehouse provides full SQL semantics; including the ability to insert, update, and delete data in the tables.

In this section of the lab, the Star Wars related data will be loaded into the data warehouse. Additionally, we will perform an exploratory analysis.

## Lab objectives

You will be able to complete the following tasks:

- Task 1: Create a data warehouse
- Task 2: Create tables and insert data
- Task 3: Define a data model
- Task 4: Query data warehouse tables
- Task 5: Create a view
- Task 6: Create a visual query
- Task 7: Visualize your data

### Task 1: Create a data warehouse and populate its data

In this task, you will design and implement a data warehouse by organizing data from multiple sources, creating ETL processes, and optimizing for performance. The goal is to enable efficient querying and reporting while ensuring security, compliance, and scalability.

1. At the bottom left of the Power BI portal, select the **Fabric (1)** icon and switch to the **Fabric (2)** experience.

![image](https://github.com/user-attachments/assets/e4d66d90-5a22-4521-8aa4-f4949e236794)

![image](https://github.com/user-attachments/assets/8d9acbf6-7b80-4c34-b4d6-a9074bf7f92a)

2. To keep things tidy, navigate to your workspace named as **fabric-<inject key="DeploymentID" enableCopy="false"/> (1)**, click on **+ New folder (2)** and create a new folder with the syntax YYYYMMDD_Lab1_Surname_Name. From now onwards, any Fabric-related created item should be placed in this directory.
![image](https://github.com/user-attachments/assets/49294d29-649f-460e-9598-b3a1646b5e19)


3. click on **+ New item (2)** to create a new warehouse. 

![image](https://github.com/user-attachments/assets/5dc383e3-1f0d-4709-9f42-310bd5578bb2)

   
3. In the **All items** search for Warehouse (1) and select **Warehouse** (2) from the list.

  ![image](https://github.com/user-attachments/assets/e8923c25-3ae4-4f8b-b0cb-78820e7d945d)
   
   - **Name:** Enter **Data Warehouse-<inject key="DeploymentID" enableCopy="false"/>** **(1)**

   - Click on **Create (2)**

   ![image](https://github.com/user-attachments/assets/ca4700cc-d802-423f-989c-4d5b00ef606c)


> **Congratulations** on completing the task! Now, it's time to validate it. Here are the steps:
      
   - If you receive an InProgress message, you can hit refresh to see the final status.
   - If you receive a success message, you can proceed to the next task.
   - If not, carefully read the error message and retry the step, following the instructions in the lab guide.

<validation step="ed927a03-5062-4d23-bf52-d57ae336f0eb" />

### Task 2: Create tables and insert data

In this task, you will model our Stars Wars database by defining the tables appropriate fields. Afterward, you'll insert data into the tables, ensuring it is ready for querying and further operations.

Our Stars Wars database will be composed by:
- **DimCharacters**: Character data with additional attributes.
- **DimCities**: City plus population data.
- **DimPlanets**: Plante and gravitational information.
- **DimSpecies**: Table that displays species attributes information.
- **DimStarships**: Table that shows spaceship specifications.
- **DimVehicles**: Table that shows vehicles specifications.
- **FactQuotes**: Table that contains quotes occured during the movies and their corresponding charaters.

1. Let's test the creation of a table. For that, in your new warehouse, select the **Create tables with T-SQL** tile.

![image](https://github.com/user-attachments/assets/ddc15492-992b-4eb4-a480-28ad729dc603)

2. Replace the default SQL code with the following **CREATE TABLE statement (1)** and Use the **&#9655; Run (2)** button to run the SQL script, which creates a new table named **DimProduct** in the **dbo** schema of the data warehouse. 

    ```SQL
    
   CREATE TABLE DimCities (
       id INT,
       name VARCHAR(100) NOT NULL,
       planet VARCHAR(100) NOT NULL,
       population INT,
       description VARCHAR(100)
   );
   GO
    
    ```

   ![](./Images/E3-T2-S2.png)

3. Use the **Refresh** button on the toolbar to refresh the view. Then, in the **Explorer** pane, expand **Schemas** > **dbo** > **Tables** and verify that the **DimCities** table has been created.

4. On the **Home** menu tab, use the **New SQL Query** button and from the drop down select **New SQL Query**  to create a new query, and enter the following INSERT statement:

    ```SQL
   INSERT INTO DimCities (id, name, planet, population, description)
   VALUES
   (1, 'Mos Eisley', 'Tatooine', 50000, 'A wretched hive of scum and villainy.'),
   (2, 'Theed', 'Naboo', 200000, 'Capital city of Naboo, known for its classical architecture.'),
   (3, 'Cloud City', 'Bespin', 10000, 'A tibanna gas mining colony floating in the clouds of Bespin.'),
   (4, 'Coruscant', 'Coruscant', 1000000000, 'The bustling capital of the Galactic Republic and later the Galactic Empire.'),
   (5, 'Jedha City', 'Jedha', 30000, 'A holy city and center of pilgrimage for those who believe in the Force.'),
   (6, 'Canto Bight', 'Cantonica', 20000, 'A casino city known for its luxury and opulence.'),
   (7, 'Mos Espa', 'Tatooine', 40000, 'A spaceport settlement on Tatooine, known for its podracing.'),
   (8, 'NiJedha', 'Jedha', 20000, 'Another important city on Jedha, known for its historical significance.'),
   (9, 'Tipoca City', 'Kamino', 50000, 'The capital city of Kamino, known for its cloning facilities.'),
   (10, 'Dahhh City', 'Toydaria', 15000, 'A major city on Toydaria.');
    ```

6. Run the above query to insert three rows into the **DimCities** table.

7. When the query has finished, select the **Data** tab at the bottom of the page in the data warehouse. In the **Explorer** pane, select the **DimCities** table and verify that the three rows have been added to the table.

8. Now that we've sucesfully tested how a table can be creted one-by-one, let's create the whole data model at once by running a script. For that, open the file [Tables_Creation_Script](https://github.com/fuster-10/mslearn-fabric-paris-demo/blob/main/warehouse-copilot/Tables_Creation_Script.sql) with a text editor. On the Home menu tab, use the **New SQL Query** button to create a new query for the table and past the content of that file. To run the whole script you can select ctrl + a and then, ctrl + enter to execute it. Please, wait some time until the script finishes and you see no error messages.

![image](https://github.com/user-attachments/assets/cd5b9673-d2b4-451c-9c78-733e09205f75)


9. Run the query, following query to validate the correct creation of the tables.

    ```SQL
   select top 10 * from dbo.DimBattles;
   select top 10 * from dbo.DimCharacters;
   select top 10 * from dbo.DimCities;
   select top 10 * from dbo.DimOrganizations;
   select top 10 * from dbo.DimPlanets;
   select top 10 * from dbo.DimSpecies;
   select top 10 * from dbo.DimStarships;
   select top 10 * from dbo.DimVehicles;
   select top 10 * from dbo.FactQuotes;

    ```
    
10. Alternatively, you can create, click on the tables to visualize a preview of its data in the explorer. For this last option, use the **Refresh** button on the toolbar to refresh the view. Then in the **Explorer** pane, verify that the **dbo** schema in the data warehouse now contains the following four tables:

    - **DimCharacters**
    - **DimCities**
    - **DimPlanets**
    - **DimSpecies**
    - **DimStarships**
    - **DimVehicles**
    - **FactQuotes**

  ![image](https://github.com/user-attachments/assets/4e147c8a-c6c7-4153-b217-11f04b80e05f)
 

> **Tip**: If the schema takes a while to load, just refresh the browser page.


### Task 2: Perform an exploratory analysis



### Task 3: Define a the  semantic model

In this task, you will create a relational data warehouse consisting of fact and dimension tables, where fact tables hold numeric measures for analysis and dimension tables store entity attributes. You'll define relationships between tables in Microsoft Fabric to build a data model for efficient business performance analysis.

1. In the warehouse, from the top navigation pane, select the **Model Layouts** option.

    >**Note:** If you do not see the **Model Layouts** option, close and reopen the Data Warehouse from the left-most navigation pane.

2. In the model pane, rearrange the tables in your data warehouse so that the **FactSalesOrder** table is in the middle, like this:

    ![Screenshot of the data warehouse model page.](./Images/fab1.png)


### Summary

In this exercise, you have created a data warehouse that contains multiple tables. You used SQL to insert data into the tables and query them. and also used the visual query tool. Finally, you enhanced the data model for the data warehouse's default dataset and used it as the source for a report.

### You have successfully completed the lab. 
