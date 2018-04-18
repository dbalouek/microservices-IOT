include "subscribe.iol"
include "database.iol"

inputPort SubscribeService {
    Location: "socket://localhost:8000"
    Protocol: sodep
    Interfaces: SubscribeInterface
}

main
{
    Subscribe( bikeId )( clientId ) {

//database connection
        bikeId = 1;
        clientId = 1
    }
}
