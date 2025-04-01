# How to use Apache Spark in Microsoft Fabric

### Overall Estimated Duration: 4 Hours

## Overview

This lab provides an introduction to Dataflows (Gen2) and Data Pipelines in Microsoft Fabric, focusing on their role in data ingestion, transformation, and automation. Participants will explore how Dataflows (Gen2) connect to various data sources, perform transformations using Power Query Online, and integrate with Data Pipelines to load data into a lakehouse or analytical store. The lab will also cover building and orchestrating pipelines using the Fabric user interface, enabling automation of extract, transform, and load (ETL) processes without extensive coding.

## Lab Objectives

By the end of this lab, you will be able to:

- **Analyze data with Apache Spark** : Use Microsoft Fabric to train and track a customer churn prediction model with Scikit-Learn and MLflow. After completing this exercise, you will have set up a lakehouse, uploaded and explored data, used Spark for transformation and visualization, and effectively managed your notebook and Spark session. This will demonstrate your ability to integrate and analyze data through multiple stages using advanced tools and techniques.
- **Create a Dataflow (Gen2) in Microsoft Fabric** : Master Apache Spark for flexible, distributed data processing and analysis across platforms like Azure HDInsight and Databricks. Successfully created a Dataflow (Gen2) to ingest data, configured its destination, and integrated it into a pipeline. This streamlined the data ingestion and processing workflow within your environment.
- **Ingest data with a pipeline**: Automate data ingestion by building pipelines to efficiently extract, transform, and load (ETL) data from various sources into a data lake or warehouse in Microsoft Fabric.

## Pre-requisites

- Foundational understanding of Microsoft Fabric and its core components
- Familiarity with data ingestion and transformation concepts
- Basic knowledge of Power Query and its role in data preparation

## Architecture

The architecture of this lab revolves around Microsoft Fabric’s Dataflows (Gen2) and Data Pipelines, forming a seamless framework for data ingestion, transformation, and automation. Dataflows (Gen2) serve as the entry point, connecting to diverse data sources and leveraging Power Query Online for data transformation. These transformed datasets integrate with Data Pipelines, which orchestrate data movement into a lakehouse or analytical store. The Fabric user interface facilitates pipeline construction and automation, streamlining extract, transform, and load (ETL) workflows without requiring extensive coding, thereby enhancing efficiency and scalability in data processing.

## Getting Started with the Lab
Welcome to your How to use Apache Spark in Microsoft Fabric Workshop! We've prepared a seamless environment for you to explore and learn about the services. Let's begin by making the most of this experience.
 
## Accessing Your Lab Environment
 
Once you're ready to dive in, your virtual machine and lab guide will be right at your fingertips within your web browser.

 ![08](./Images/gs2.png)
 
## Exploring Your Lab Resources
 
To get a better understanding of your lab resources and credentials, navigate to the **Environment** tab.
 
  ![08](./Images/gs1.png)
 
## Utilizing the Split Window Feature
 
For convenience, you can open the lab guide in a separate window by selecting the **Split Window** button from the Top right corner.
 
  ![08](./Images/gs3.png)

## Utilizing the Zoom In/Out Feature

To adjust the zoom level for the environment page, click the A↕ : 100% icon located next to the timer in the lab environment.

   ![08](./Images/march-getting-started-6.png)

## Managing Your Virtual Machine
 
Feel free to start, stop, or restart your virtual machine as needed from the **Resources** tab. Your experience is in your hands!

   ![08](./Images/march-getting-started-5.png)

## ‎Let's Get Started with Fabric Portal

1. Click on **Microsoft Edge** from the desktop.

1. Navigate to `https://app.fabric.microsoft.com` and sign in using the below credentials:

   - Email: <inject key="AzureAdUserEmail"></inject> and click on **Submit**
   - Password: <inject key="AzureAdUserPassword"></inject> and click on **Sign in**

1. On the **Stay signed in?** pop-up, click on **No**.

      > **Note**: If prompted with MFA, please follow the steps highlighted under - [Steps to Proceed with MFA Setup if "Ask Later" Option is Not Visible](Steps-to-Proceed-with-MFA-Setup-if-"Ask-Later"-Option-is-Not-Visible)

1. Click on the Profile icon from the top right and select **Free Trial**.

     ![08](./Images/ap1.png)

1. On the Activate your 60-day free Fabric Trial capacity, click on **Activate**. 

      ![08](./Images/ap2.png)
   
1. Once your trial capacity is ready, you will receive a confirmation message. Select **Got it** to begin working in Fabric.

      ![08](./Images/ap3.png)
   
1. Open your **Account manager** again. Notice that you now have a heading for **Trial status**. Your Account manager keeps track of the number of days remaining in your trial.

    ![08](./Images/ap4.png)

      > **Note:** You now have a **Fabric (Preview) trial** that includes a **Power BI trial** and a **Fabric (Preview) trial capacity**.

1. From the left pane, select **Workspaces (1)** and click on **+ New Workspace (2)**.

      ![08](./Images/ap5.png)

1. On the Create a workspace dialog box. provide the name as **fabric-<inject key="DeploymentID" enableCopy="false"/>** **(1)** and click on **Apply (2)**.

     ![08](./Images/ap5-1.png)
   
1. When your new workspace opens, it should be empty, as shown in the image.

    ![08](./Images/ap5-2.png)

## Steps to Proceed with MFA Setup if "Ask Later" Option is Not Visible

1. At the **"More information required"** prompt, select **Next**.

1. On the **"Keep your account secure"** page, select **Next** twice.

1. **Note:** If you don’t have the Microsoft Authenticator app installed on your mobile device:

   - Open **Google Play Store** (Android) or **App Store** (iOS).
   - Search for **Microsoft Authenticator** and tap **Install**.
   - Open the **Microsoft Authenticator** app, select **Add account**, then choose **Work or school account**.

1. A **QR code** will be displayed on your computer screen.

1. In the Authenticator app, select **Scan a QR code** and scan the code displayed on your screen.

1. After scanning, click **Next** to proceed.

1. On your phone, enter the number shown on your computer screen in the Authenticator app and select **Next**.
       
1. If prompted to stay signed in, you can click **No**.

1. If a **Welcome to Microsoft Azure** popup window appears, click **Cancel** to skip the tour.
 
1. Now, click on the **Next** from the lower right corner to move to the next page.

## Support Contact

The CloudLabs support team is available 24/7, 365 days a year, via email and live chat to ensure seamless assistance at any time. We offer dedicated support channels tailored specifically for both learners and instructors, ensuring that all your needs are promptly and efficiently addressed.

Learner Support Contacts:

- Email Support: cloudlabs-support@spektrasystems.com
- Live Chat Support: https://cloudlabs.ai/labs-support

    Now, click on Next from the lower right corner to move on to the next page.

## Happy Learning!!
