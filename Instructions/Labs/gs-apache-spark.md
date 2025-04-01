# How to use Apache Spark in Microsoft Fabric

## Overview

This lab provides an introduction to Dataflows (Gen2) and Data Pipelines in Microsoft Fabric, focusing on their role in data ingestion, transformation, and automation. Participants will explore how Dataflows (Gen2) connect to various data sources, perform transformations using Power Query Online, and integrate with Data Pipelines to load data into a lakehouse or analytical store. The lab will also cover building and orchestrating pipelines using the Fabric user interface, enabling automation of extract, transform, and load (ETL) processes without extensive coding.

## Lab Objectives

- **Analyze data with Apache Spark** : Use Microsoft Fabric to train and track a customer churn prediction model with Scikit-Learn and MLflow. After completing this exercise, you will have set up a lakehouse, uploaded and explored data, used Spark for transformation and visualization, and effectively managed your notebook and Spark session. This will demonstrate your ability to integrate and analyze data through multiple stages using advanced tools and techniques.
- **Create a Dataflow (Gen2) in Microsoft Fabric** : Master Apache Spark for flexible, distributed data processing and analysis across platforms like Azure HDInsight and Databricks. Successfully created a Dataflow (Gen2) to ingest data, configured its destination, and integrated it into a pipeline. This streamlined the data ingestion and processing workflow within your environment.

## Getting Started with the Lab

1. Click on **Microsoft Edge** from the desktop.

1. Navigate to `https://app.fabric.microsoft.com` and sign in using the below credentials:

   - Email: <inject key="AzureAdUserEmail"></inject> and click on **Submit**
   - Password: <inject key="AzureAdUserPassword"></inject> and click on **Sign in**

1. On the **Stay signed in?** pop-up, click on **No**.

   1. Click on the Profile icon from the top right and select **Free Trial**.

1. On the Activate your 60-day free Fabric Trial capacity, click on **Activate**. 
   
1. Once your trial capacity is ready, you will receive a confirmation message. Select **Got it** to begin working in Fabric.
   
1. Open your **Account manager** again. Notice that you now have a heading for **Trial status**. Your Account manager keeps track of the number of days remaining in your trial.

      > **Note:** You now have a **Fabric (Preview) trial** that includes a **Power BI trial** and a **Fabric (Preview) trial capacity**.

1. From the left pane, select **Workspaces (1)** and click on **+ New Workspace (2)**.

1. On the Create a workspace dialog box. provide the name as **fabric-<inject key="DeploymentID" enableCopy="false"/>** **(1)** and click on **Apply (2)**.
   
1. When your new workspace opens, it should be empty, as shown here:
