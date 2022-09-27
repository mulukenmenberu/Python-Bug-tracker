# Python-Todo-App 
# Python - Flask - PostgreSQL - SQL Alchemy 

![alt text](https://github.com/mulukenmenberu/Python-Todo-App/blob/master/todo.png)

# Documentation


## Environemnt Setup 
### Python Installation 
If you Don't have installed Python yet, please go here and itstall it. 
https://docs.python.org/3/using/unix html#getting-and-installing-the-latest-version-of-python)

### Creating Virtual Environemnt 
  **Creating Virtual Environment on Linux** - 
  ```bash
python3 -m venv venv
```
  **Activating Virtual Environment on Linux** - 
  ```bash
source venv/bin/activate
```
 **Creating Virtual Environment on Windows** - 

### Installing Dependencies
  all required packages are found in requirements.txt. so, after switching to your vertual environemtn, run the following command to install all required packages 

  ```bash
  pip install -r requirements.txt
  ```
### Set up the Database
connect to your postgres database engine and run the following command to create the database.

```bash
createbd todo_app
```
### Importing demo data to the Database
If you want to have a demo data in the newly created DB, you can run the following command. The demo DB file located under this directory. 

psql todo_app < todo-app.sql
```
