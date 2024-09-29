
## MANUAL DATABASE
# Database Setup.
  There is includes a Dockerfile, that include a Mysql container, this will automatic run the
  database initial.sql on start.

- docker build -t database .
- docker run -d -p 3306:3306 --name db_container database

# Testing 
  i've not created any testing scripts, but python could be used to run the sql script and test the 
  tables and more, to ensure stabil production envioment. 

# Handling rollback.
  There is a shell script that can create the rollback script. to use the script.
  1. make the script ececutable by typing: chmod +x rollback.sh
  2. now call the script by typing: "./rollback.sh"
    a. there are some input parameters -t for sql-script title. -f for the script needed to be run.
    b. ./rollback.sh -t "callbackScript" -f "product_rollback" -f "productRatings_rollback"
    c. This will create a callbackScript.sql that can be used to run the callback for the different tables.

  after run the script inside the chain, used for the product.

//NOTE:
  I've not created the script to finish, but inside the script more checks for the rollback could be
  created like making a backup, or other checks before creating the script. generel it's better to auto
  generate some scripts, instead of trusting the use to do it.

  so this is a simple demostration of how this could be created.


## ENTITY FRAMEWORK