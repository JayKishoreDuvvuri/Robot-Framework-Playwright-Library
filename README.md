### Robot Framework using Playwright Library

An example project demonstrating automation of Robot Framework test using playwright library with page object design pattern framework.

#### Application Under Test

We are using https://www.saucedemo.com/ as the Application Under Test. This App is a **React.js** Frontend

- URL: https://www.saucedemo.com/
- OS : macOS
- IDE : Visual Studio Code


#### Scenarios

```bash
Scenario 1:
Login as a standard user to complete the checkout workflow

Scenario Description:
User logs into the website. User completes the checkout workflow and logs out from the application.

Testname: CheckoutWorkflowTest.robot
```

 
#### Installation
- Clone (OR) Download this repo as zip folder on to your local machine
- Navigate to project's directory on terminal and run the following commands:

Clone the repository

```bash
git clone https://github.com/JayKishoreDuvvuri/Robot-Framework-Playwright-Library.git
```

#### Run Test on Safari Browser

On your Terminal run the below command

```bash
robot -d Report Tests/CheckoutWorkflowTest.robot
```


#### Test Report

```bash
Open 'report.html' from 'Report' Folder
```
