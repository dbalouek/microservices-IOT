include "console.iol"
include "subscribe.iol"

outputPort SubscribeService {
    Location: "socket://localhost:8000"
    Protocol: sodep
    Interfaces: SubscribeInterface
}

main
{
    bikeId = 5;
    clientId = 5;
    Subscribe@SubscribeService( bikeId )( clientId );
    println@Console( bikeId )();
    println@Console(clientId)()
}
