start node root
{
    do
    {
        #connectSafe($phone)
        #waitForSpeech(1000);
        #sayText("Welcome to Indian Postal Service! How can I help you");
        wait *;
    }
    transitions
    {
        track_parcel: goto track_parcel on #messageHasIntent("track_parcel");
        missed_delivery: goto missed_delivery on #messageHasIntent("missed_deliver");
        where_is_point: goto where_is_point on #messageHasIntent("where_is_point");
        return_shipment: goto return_shipment on #messageHasIntent("return_shipment");
    }
}

node track_parcel
{
    do
    {
        #sayText("Sorry, tracking function is not implemented yey.");
        #disconnect();
        exit;
    }
}