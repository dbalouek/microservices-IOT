include "subscribe.iol"
include "database.iol"
include "console.iol"

inputPort SubscribeService {
    Location: "socket://localhost:8000"
    Protocol: sodep
    Interfaces: SubscribeInterface
}

outputPort DatabaseService {
    Location: "socket://localhost:8001"
    Protocol: sodep
    Interfaces: DatabaseInterface
}

main
{
  //what to be displayed on screen for output of database service
  /*bikeId = 1;
  clientId = 1;
  Database@DatabaseService(bikeId)(clientId);
  println@Console(bikeId)();
  println@Console(clientId)();*/

  //subscribe interface with input port
  Subscribe(bikeId)(clientId)
  {
    //bikeId = 1;
    //clientId = 1;
    Database@DatabaseService(bikeId)(clientId);
    println@Console(bikeId)();
    println@Console(clientId)()
  }

}
