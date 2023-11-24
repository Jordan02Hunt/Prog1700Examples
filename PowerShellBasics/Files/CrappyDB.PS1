
#Create a Database
Function Initialize-CrappyDB {
    #Check is dtabase exists
    If(-not (test-path 'Crappydb')){
        #If not create the database
        New-Item 'Crappydb' -ItemType Directory
        Set-Location 'Crappydb' 
            #Create the database, "Crappydb.txt" in a subfolder, called "crappydb"
            New-Item 'Crappydb' -ItemType File
    }
}
Initialize-CrappyDB

#Insert records into the Database

#Display records from the database

#Updatable records with new information

#delete records from the database

