
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
#Initialize-CrappyDB

#Insert records into the Database
Function Add-Data {
    $records = @(
        @("W0446744","Jordan","Hunt"),
        @("W0446745","Bordan","Bunt"),
        @("w0446746", "Mordan", "Munt")
    )
    $db = "$pwd\Crappydb\crappydb.txt"
    $fs = [System.io.streamWriter]::new($db)
    foreach($r in $records){
        $fs.write($r[0])
        $fs.write(",")
        $fs.write($r[1])
        $fs.write(",")
        $fs.write($r[2])
        $fs.write("`n")
    }
    $fs.close()
}
#Add-Data

#Display records from the database
Function Select-Data {
    $db = "$pwd\Crappydb\crappydb.txt"
    $records = Get-Content $db
    Foreach($r in $records){
        $r
    }
}
#Select-Data

#Updatable records with new information

#delete records from the database

Function Remove-Data{
    param(
        $id
    )
    $Lines = Get-Content "$pwd\Crappydb\crappdb.txt"
    Remove-item "$pwd\Crappdb\Crappyb.txt"
    Foreach($line in $lines) {
        $fields= $line.splitt(",")
        if(fields[0] -ne $id) {
            Add-Content $line "$pwd\Crappdb\Crappyb.txt"
        }
    }
}
#Remove-Data -id W0446745

Export-ModuleMember -Function Initialize-CrappyDB,Add-Data,Select-Data,Remove-Data