include "console.iol"
include "database.iol"

inputPort DatabaseService {
    Location: "socket://localhost:8001"
    Protocol: sodep
    Interfaces: DatabaseInterface
}

main
{
  //Database interface with input port
  Database(bikeId)(clientId)
  {
    println@Console( bikeId )();
    println@Console(clientId)()
  }
}
