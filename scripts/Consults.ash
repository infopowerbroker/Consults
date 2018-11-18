void main()
{
Notify infopowerbroker
if (get_property("_clanFortuneConsultUses") <3){
	cli_execute("try; fortune djve");
	chat_notify( "Asked fortune from djve", "blue" );
}
if (get_property("_clanFortuneConsultUses") <3){
	cli_execute("try; fortune busstop82");
	chat_notify( "Asked fortune from busstop82", "blue" );
}
if (get_property("_clanFortuneConsultUses") <3){
	cli_execute("try; fortune pekaje");
	chat_notify( "Asked fortune from pekaje", "blue" );
}
if (get_property("_clanFortuneConsultUses") <3){
	cli_execute("try; fortune stalh");
	chat_notify( "Asked fortune from infopowerbroker", "blue" );
}
if (get_property("_clanFortuneConsultUses") <3){
	cli_execute("try; fortune cyberdyne");
	chat_notify( "Asked fortune from cyberdyne", "blue" );
}
if (get_property("_clanFortuneConsultUses") <3){
	cli_execute("try; fortune UnusualScar");
	chat_notify( "Asked fortune from infopwoerbroker", "blue" );
}
if (get_property("_clanFortuneConsultUses") <3){
	cli_execute("try; fortune mat9h");
	chat_notify( "Asked fortune from mat9h", "blue" );

}
if (get_property("_clanFortuneConsultUses") <3){
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