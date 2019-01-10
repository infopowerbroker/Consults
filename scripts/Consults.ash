#This script is a fork of PeKaJe's Zatara.ash
#It takes the existing fucntionaly (Iterating throguh all requested consults and replying back with the mafia default answers) and also checks to see if you have used your clan consults yet.
#If you still have consults available, it will send them to statically assigned people (current clannies in OldCW's clan).
#If you are not in OldCW's clan, you should change the names to people who normally respond to your consults in your clan.
#This script will not change much, so you shouldn't get too many updates wiping out your customization.
void main()
{
Notify infopowerbroker
if (get_property("_clanFortuneConsultUses").to_int() <3){
	cli_execute("try; fortune djve");
	chat_notify( "Asked fortune from djve", "blue" );
}
if (get_property("_clanFortuneConsultUses").to_int() <3){
	cli_execute("try; fortune pekaje");
	chat_notify( "Asked fortune from pekaje", "blue" );
}
if (get_property("_clanFortuneConsultUses").to_int() <3){
	cli_execute("try; fortune infopowerbroker");
	chat_notify( "Asked fortune from infopowerbroker", "blue" );
}	
	if (get_property("_clanFortuneConsultUses").to_int() <3){
	cli_execute("try; fortune busstop82");
	chat_notify( "Asked fortune from busstop82", "blue" );
}
if (get_property("_clanFortuneConsultUses").to_int() <3){
	cli_execute("try; fortune stalh");
	chat_notify( "Asked fortune from stalh", "blue" );
}
if (get_property("_clanFortuneConsultUses").to_int() <3){
	cli_execute("try; fortune cyberdyne");
	chat_notify( "Asked fortune from cyberdyne", "blue" );
}
if (get_property("_clanFortuneConsultUses").to_int() <3){
	cli_execute("try; fortune UnusualScar");
	chat_notify( "Asked fortune from UnusualScar", "blue" );
}
if (get_property("_clanFortuneConsultUses").to_int() <3){
	cli_execute("try; fortune LunaDancer");
	chat_notify( "Asked fortune from LunaDancer", "blue" );

}
if (get_property("_clanFortuneConsultUses").to_int() <3){
chat_notify( "Still have fortunes to make", "red" );
}
	string testpage = visit_url( "clan_viplounge.php?preaction=lovetester" );
	matcher testees = create_matcher( "<a href=./clan_viplounge.php.preaction=testlove.testlove=(\\d*).>([^<]*)</a>", testpage);
	if( testees.find() )
	{
		chat_notify( "Told fortunes for:", "blue" );
	}
	else
	{
		chat_notify( "No fortunes to tell", "blue" );
	}
	testees.reset();
	while( testees.find() )
	{
		visit_url( "clan_viplounge.php?preaction=dotestlove&testlove=" + testees.group( 1 ) + "&q1=beer&q2=robin&q3=thin", true );
		chat_notify( testees.group( 2 ), "blue" );
	}
}
