# Exercise 1: Create a Fabric workspace

### Estimated Duration: 10 minutes

In this exercise, you will go through the process of signing up for the Microsoft Fabric Trial and setting up a workspace. This serves as the initial step in familiarizing yourself with the Microsoft Fabric platform. By creating a workspace, you will establish a dedicated environment where you can explore and interact with the wide range of tools and services Microsoft Fabric offers, including data integration, analytics, and visualization. This foundational setup is essential for understanding how to manage and organize resources within Fabric, as well as how to collaborate effectively across teams and projects within the platform.

## Lab objectives

You will be able to complete the following tasks:

- Task 1: Sign up for Microsoft Fabric Trial
- Task 2: Create a workspace

### Task 1: Sign up for Microsoft Fabric Trial

1. Copy the **Power BI homepage link**, and open this link inside the VM in a new tab.

   ```
   https://powerbi.com
   ```

   >**Note**: In case a sign-up page asks for a phone number, you can enter a dummy phone number to proceed.

1. Select **Account manager (1)**, and click on **Free trial (2)**.

     ![Account-manager-start](./Images/lab1-image3.png)

1. A new prompt will appear asking you to **Activate your 60-day free Fabric trial capacity**, click on **Activate**.

      ![Account-manager-start](./Images/fabric-3.png)

1. Click on S**tay on current page** when prompted.

      ![Account-manager-start](./Images/fabric-2.png)

1. Now, open **Account manager (1)** again, and verify **Trial Status (2)**.

      ![Account-manager-start](./Images/lab1-image5.png)

### Task 2: Create a workspace

Here, you create a Fabric workspace. The workspace contains all the items needed for this lakehouse tutorial, which includes lakehouse, dataflows, Data Factory pipelines, notebooks, Power BI datasets, and reports.

1.  Now, select **Workspaces (1)** and click on **+ New workspace (2)**.
 
    ![New Workspace](./Images/ws/11.png)
 

2. Fill out the **Create a workspace** form with the following details:
 
   - **Name:** Enter **fabric-<inject key="DeploymentID" enableCopy="false"/>**
 
      ![name-and-desc-of-workspc](./Images/ws/12.png)
 
   - **Advanced:** Expand it and Under **License mode**, select **Fabric capacity (1)**, Under **Capacity** Select available **fabric<inject key="DeploymentID" enableCopy="false"/> - <inject key="Location"></inject>(2)** and click on **Apply (3)** to create and open the workspace.
 
      ![advanced-and-apply](./Images/32.png)

> **Congratulations** on completing the task! Now, it's time to validate it. Here are the steps:
      
   - If you receive an InProgress message, you can hit refresh to see the final status.
   - If you receive a success message, you can proceed to the next task.
   - If not, carefully read the error message and retry the step, following the instructions in the lab guide.
   - If you need any assistance, please contact us at cloudlabs-support@spektrasystems.com. We are available 24/7 to help you out.

<validation step="83244567-08a3-4e9f-97f6-2dedd48bc53f" />

### Summary

In this exercise, you have signed up for Microsoft Fabric Trial and created a workspace.

### Review 
In this lab, you have completed:

 + Signed up for Microsoft Fabric Trial
 + Created a workspace

### You have successfully completed the lab. Click on Next >> to procced with next exercise.
